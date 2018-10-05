import numpy
import os
import os.path as osp
import argparse

import tensorflow as tf

def shuffle_in_unison(a, b):
    assert len(a) == len(b)
    shuffled_a = numpy.empty(a.shape, dtype=a.dtype)
    shuffled_b = numpy.empty(b.shape, dtype=b.dtype)
    permutation = numpy.random.permutation(len(a))
    for old_index, new_index in enumerate(permutation):
        shuffled_a[new_index] = a[old_index]
        shuffled_b[new_index] = b[old_index]
    return shuffled_a, shuffled_b

def freeze_session(session, tf, keep_var_names=None, output_names=None, clear_devices=True):
    """
    Freezes the state of a session into a pruned computation graph.

    Creates a new computation graph where variable nodes are replaced by
    constants taking their current value in the session. The new graph will be
    pruned so subgraphs that are not necessary to compute the requested
    outputs are removed.
    @param session The TensorFlow session to be frozen.
    @param keep_var_names A list of variable names that should not be frozen,
                          or None to freeze all the variables in the graph.
    @param output_names Names of the relevant graph outputs.
    @param clear_devices Remove the device directives from the graph for better portability.
    @return The frozen graph definition.
    """
    from tensorflow.python.framework.graph_util import convert_variables_to_constants
    graph = session.graph
    with graph.as_default():
        freeze_var_names = list(set(v.op.name for v in tf.global_variables()).difference(keep_var_names or []))
        output_names = output_names or []
        output_names += [v.op.name for v in tf.global_variables()]
        input_graph_def = graph.as_graph_def()
        if clear_devices:
            for node in input_graph_def.node:
                node.device = ""
        frozen_graph = convert_variables_to_constants(session, input_graph_def,
                                                      output_names, freeze_var_names)
        return frozen_graph


'''
    Converts an HD5F file to a .pb file for use with Tensorflow.
    Args:
        modelPath (str): path to the .h5 file
           outdir (str): path to the output directory
       numoutputs (int):
           prefix (str): the prefix of the output aliasing
             name (str):
    Returns:
        None
'''
def convertGraph(modelPath, outdir, numoutputs, prefix, name, K=None):
    # NOTE: If using Python > 3.2, this could be replaced with os.makedirs( name, exist_ok=True )
    if not os.path.isdir(outdir):
        os.mkdir(outdir)

    K.backend.set_learning_phase(0)

    net_model = K.models.load_model(modelPath)

    # Alias the outputs in the model - this sometimes makes them easier to access in TF
    pred = [None] * numoutputs
    pred_node_names = [None] * numoutputs
    for i in range(numoutputs):
        pred_node_names[i] = prefix + '_' + str(i)
        pred[i] = tf.identity(net_model.output[i], name=pred_node_names[i])
    print('Output nodes names are: ', pred_node_names)

    sess = K.backend.get_session()

    # Write the graph in human readable
    f = 'graph_def_for_reference.pb.ascii'
    tf.train.write_graph(sess.graph.as_graph_def(), outdir, f, as_text=True)
    print('Saved the graph definition in ascii format at: ', osp.join(outdir, f))

    # Write the graph in binary .pb file
    from tensorflow.python.framework import graph_util
    from tensorflow.python.framework import graph_io
    constant_graph = graph_util.convert_variables_to_constants(sess, sess.graph.as_graph_def(), pred_node_names)
    graph_io.write_graph(constant_graph, outdir, name, as_text=False)
    print('Saved the constant graph (ready for inference) at: ', osp.join(outdir, name))

    if __name__ == '__main__':
        parser = argparse.ArgumentParser()
        parser.add_argument('--model', '-m', dest='model', required=True,
                            help='REQUIRED: The HDF5 Keras model you wish to convert to .pb')
        parser.add_argument('--numout', '-n', type=int, dest='num_out', required=True,
                            help='REQUIRED: The number of outputs in the model.')
        parser.add_argument('--outdir', '-o', dest='outdir', required=False, default='./',
                            help='The directory to place the output files - default("./")')
        parser.add_argument('--prefix', '-p', dest='prefix', required=False, default='k2tfout',
                            help='The prefix for the output aliasing - default("k2tfout")')
        parser.add_argument('--name', dest='name', required=False, default='output_graph.pb',
                            help='The name of the resulting output graph - default("output_graph.pb")')
        args = parser.parse_args()

        convertGraph(args.model, args.outdir, args.num_out, args.prefix, args.name)


'''
    Logs a pb file
    Args:
        model_filename (str): path to the .pb file
        output_path (str): path to the output directory
    Returns:
        None
'''
def log_graph_file(model_filename, output_path):
    import tensorflow as tf
    from tensorflow.python.platform import gfile
    with tf.Session() as sess:
        with gfile.FastGFile(model_filename, 'rb') as f:
            graph_def = tf.GraphDef()
            graph_def.ParseFromString(f.read())
            g_in = tf.import_graph_def(graph_def)
    LOGDIR=output_path
    train_writer = tf.summary.FileWriter(LOGDIR)
    train_writer.add_graph(sess.graph)
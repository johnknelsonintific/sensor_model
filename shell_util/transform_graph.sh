
# example
# bazel-bin/tensorflow/tools/graph_transforms/transform_graph \
# --in_graph={frozen graph .pb file} \
# --out_graph={output graph path and name} \
# --inputs={name of input nodes} --outputs={name of output nodes} \
# --transforms='strip_unused_nodes(type=float)'

../../../bazel-bin/tensorflow/tools/graph_transforms/transform_graph \
--in_graph=../$0 \
--out_graph=../$1 \
--inputs=$2 --outputs=$3 \
--transforms='strip_unused_nodes(type=float)'

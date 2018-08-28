# @title Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# @title MIT License
#
# Copyright (c) 2017 François Chollet
#
# Permission is hereby granted, free of charge, to any person obtaining a
# copy of this software and associated documentation files (the "Software"),
# to deal in the Software without restriction, including without limitation
# the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
# DEALINGS IN THE SOFTWARE.

# TensorFlow and tf.keras
import tensorflow as tf
from tensorflow import keras

# Helper libraries
import numpy as np
import pandas as pd
import pose_util
import os
import datetime

print(tf.__version__)

#TODO iterate through many CSVs and concatenate
sensor_data_frame = pd.read_csv("/Users/205314/Documents/SYNISR/SensorSamples/IRADSensorLog08_01_01_06_18.csv", sep=",", index_col=12)
sensor_label_frame = pd.read_csv("/Users/205314/Documents/SYNISR/SensorSamples/IRADSensorLog08_01_01_06_18.csv", sep=",", dtype=int, usecols=[12])

print(sensor_data_frame.head())
sensor_data_ndarray = sensor_data_frame.values

print(sensor_label_frame.head())
sensor_label_ndarray = sensor_label_frame.values

# Randomize order of array
sensor_data_ndarray, sensor_label_ndarray = pose_util.shuffle_in_unison(sensor_data_ndarray, sensor_label_ndarray)

sensor_data_train = sensor_data_ndarray[1: int(len(sensor_data_ndarray)*.6)]
sensor_data_test = sensor_data_ndarray[int(len(sensor_data_ndarray)*.6) : int(len(sensor_data_ndarray)*.8)]
sensor_data_validate = sensor_data_ndarray[int(len(sensor_data_ndarray)*.8) :len(sensor_data_ndarray)]

sensor_label_train = sensor_label_ndarray[1: int(len(sensor_label_ndarray)*.6)]
sensor_label_test = sensor_label_ndarray[int(len(sensor_label_ndarray)*.6) : int(len(sensor_label_ndarray)*.8)]
sensor_label_validate = sensor_label_ndarray[int(len(sensor_label_ndarray)*.8) : len(sensor_label_ndarray)]

class_names = ['standing', 'crouching', 'prone']
sensor_names = ['linearAccelerometerX', 'linearAccelerometerY',	'linearAccelerometerZ', 'accelerometerX', 'accelerometerY', 'accelerometerZ', 'gyroscopeX', 'gyroscopeY', 'gyroscopeZ',	'gameRotationX', 'gameRotationY', 'gameRotationZ']

print("Sensor data shape")
print(sensor_data_ndarray.shape)

print("sensor_data_train length: ", len(sensor_data_train))
print("sensor_data_test length: ", len(sensor_data_test))
print("sensor_label_train length: ", len(sensor_label_train))
print("sensor_label_test length: ", len(sensor_label_test))

print(sensor_data_train.shape)
print(sensor_label_train.shape)
print(sensor_data_test.shape)
print(sensor_label_test.shape)

# plt.figure()
# plt.imshow(train_images[0])
# plt.colorbar()
# plt.gca().grid(False)

#TODO divide by MAX (but not yet, all values are small aside from one feature which we may need to scale
#
# train_images = train_images / 255.0
#
# test_images = test_images / 255.0

#TODO Plot some of the training data if we can figure out how, for now the evaluate->view as array works great
# plt.figure(figsize=(10, 10))
# for i in range(25):
#     plt.subplot(5, 5, i + 1)
#     plt.xticks([])
#     plt.yticks([])
#     plt.grid('off')
#     plt.imshow(train_images[i], cmap=plt.cm.binary)
#     plt.xlabel(class_names[train_labels[i]])

#TODO Try this with a sigmoid function
# Define the model
# model = keras.Sequential([
#     #We don't need to flatten, we've already got 2d arrays
#     #keras.layers.Flatten(input_shape=(28, 28)),
#     keras.layers.Dense(128, activation=tf.nn.relu),
#     keras.layers.Dense(3, activation=tf.nn.softmax)
# ])

#TODO Try this the way that allows us to define shape ahead of time
model = keras.Sequential([
    keras.layers.InputLayer(input_shape=(12,)),
    keras.layers.Dense(128, input_shape=(12,), activation=tf.nn.relu),
    keras.layers.Dense(3, input_shape=(128,), activation=tf.nn.softmax)
])
# Compile the models
model.compile(optimizer=tf.train.AdamOptimizer(),
              loss='sparse_categorical_crossentropy',
              metrics=['accuracy'])
# model.compile(optimizer=tf.keras.optimizers.Adam(),
#               loss='sparse_categorical_crossentropy',
#               metrics=['accuracy'])

# Define the callback for model training, which periodically saves the model
checkpoint_path = "./training_1/cp.ckpt"
checkpoint_dir = os.path.dirname(checkpoint_path)
cp_callback = tf.keras.callbacks.ModelCheckpoint(checkpoint_path,
                                                 save_weights_only=True,
                                                 verbose=1)

checkpoint_path = "./training_2/cp-{epoch:04d}.ckpt"
cp_callback_2 = tf.keras.callbacks.ModelCheckpoint(
    checkpoint_path, verbose=1, save_weights_only=True,
    # Save weights, every epoch.
    period=1)

model.fit(x=sensor_data_train,
          y=sensor_label_train,
          epochs=5,
          # callbacks=[cp_callback, cp_callback_2])
          callbacks=[cp_callback])


# TODO Try to invoke the python model freezing script from here
# input_graph_path = "./graphs/pose_model_serial.pb"
# checkpoint_path = './tf_sess_chkp/checkpoint.chpk'
# input_saver_def_path = ""
# input_binary = True
# output_node_names = model.output_names #output node name
# restore_op_name = "save/restore_all"
# filename_tensor_name = "save/Const:0"
# output_frozen_graph_name = 'frozen_'+model.name+'.pb'
# clear_devices = True
#
#
# freeze_graph.freeze_graph(input_graph_path, input_saver_def_path,
#                           input_binary, checkpoint_path, output_node_names,
#                           restore_op_name, filename_tensor_name,
#                           output_frozen_graph_name, clear_devices, "")
#

test_loss, test_acc = model.evaluate(sensor_data_test, sensor_label_test)

print('Test accuracy:', test_acc)

predictions = model.predict(sensor_data_validate)

predictions[0]

print(np.argmax(predictions[0], axis=0));

print(sensor_label_validate[0]);

# Prep variables for graph freeze
today = datetime.datetime.today()
outputs = [node.op.name for node in model.outputs];

#TODO Try some suggestion from a github issue here: https://github.com/keras-team/keras/issues/6646#issuecomment-313426350
for layer in model.layers:
    layer.trainable = False

# Save whole model including weights plus current state
# Save entire model to a HDF5 file
model.save(filepath='./whole_model/my_model.h5', overwrite=True)
#TODO Attempt to save h5 to pb
today = datetime.datetime.today()
pose_util.convertGraph('./whole_model/my_model.h5', './frozen_graphs', 3, 'pose', 'pose_graph_def' + today.strftime("%d_%m_%Y") +'.pb', K=keras);

#
# model.compile(optimizer=tf.train.AdamOptimizer(),
#                   loss='sparse_categorical_crossentropy',
#                   metrics=['accuracy'])

# #TODO Save whole model to pb file
# with keras.backend.get_session() as sess:
#     sess.run(tf.global_variables_initializer())
#     sess.run(tf.tables_initializer())
#     frozen_graph = pose_util.freeze_session(sess, tf,
#                                             output_names=outputs
#                                             )
#     tf.train.write_graph(frozen_graph, './frozen_graphs', "frozen_pose_model" + today.strftime("%d_%m_%Y") + ".pb", as_text=True)

#TODO Attempt graph freeze from session per http://aqibsaeed.github.io/2017-05-02-deploying-tensorflow-model-andorid-device-human-activity-recognition/
# from tensorflow.python.tools import freeze_graph
# from tensorflow.python.tools import optimize_for_inference_lib
#
# saver = tf.train.Saver()
# with tf.Session() as session:
#     session.run(tf.global_variables_initializer())
#     tf.train.write_graph(session.graph_def, './graphs', 'har.pbtxt')
#     saver.save(session,save_path="./training_3/har.ckpt")
#
# freeze_graph.freeze_graph(input_graph = "./graphs/har.pbtxt",  input_saver="",
#              input_binary=False, input_checkpoint = "./training_3/har.ckpt", output_node_names=outputs,
#              restore_op_name="save/restore_all", filename_tensor_name="save/Const:0",
#              output_graph="./frozen_graphs/frozen_har.pb", clear_devices=True, initializer_nodes="")


# #TODO output pb file
# tf.train.write_graph(keras.backend.get_session().graph, './graphs', "pose_model_serial.pb", as_text=False)
#
# saver = tf.train.Saver()
# with tf.Session() as sess:
#     sess.run(tf.global_variables_initializer())
#     sess.run(tf.tables_initializer())
#     save_path = saver.save(sess, './tf_sess_chkp/checkpoint.chpk')

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

# iterate through many CSVs and concatenate
data_columns = 12
csvDirectory = "/Users/205314/Documents/SYNISR/SensorSamples/"
sensor_data_frame = pd.DataFrame();
sensor_label_frame =  pd.DataFrame();
for file in os.listdir(csvDirectory):
    if file.endswith('.csv'):
        sensor_data_frame_temp = pd.read_csv( csvDirectory + file, sep=",", index_col=data_columns)
        sensor_label_frame_temp = pd.read_csv(csvDirectory + file, sep=",", dtype=int, usecols=[data_columns])

        data_frames = [sensor_data_frame, sensor_data_frame_temp]
        sensor_data_frame = pd.concat(data_frames)

        label_frames = [sensor_label_frame, sensor_label_frame_temp]
        sensor_label_frame = pd.concat(label_frames)

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

#TODO divide by MAX (but not yet, all values are small aside from one feature which we may need to scale
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

# Compile the models and define loss function (this is like gradient descent)
model.compile(optimizer=tf.train.AdamOptimizer(),
              loss=keras.losses.sparse_categorical_crossentropy,
              metrics=['accuracy'])

# Define the callback for model training, which periodically saves the model
checkpoint_path = "./training/training_1/cp.ckpt"
checkpoint_dir = os.path.dirname(checkpoint_path)
cp_callback = tf.keras.callbacks.ModelCheckpoint(checkpoint_path,
                                                 save_weights_only=True,
                                                 verbose=1)

tb_callback = tf.keras.callbacks.TensorBoard(log_dir='./logs', histogram_freq=0, write_graph=True, write_images=False)

model.fit(x=sensor_data_train,
          y=sensor_label_train,
          epochs=5,
          # callbacks=[cp_callback, cp_callback_2])
          callbacks=[cp_callback, tb_callback])

test_loss, test_acc = model.evaluate(sensor_data_test, sensor_label_test)

print('Test accuracy:', test_acc)

predictions = model.predict(sensor_data_validate)

predictions[0]

print(np.argmax(predictions[0], axis=0));

print(sensor_label_validate[0]);

#TODO Try some suggestion from a github issue here: https://github.com/keras-team/keras/issues/6646#issuecomment-313426350
for layer in model.layers:
    layer.trainable = False

# Save whole model including weights plus current state
model.save(filepath='./whole_model/my_model.h5', overwrite=True)

# Save h5 to pb
today = datetime.datetime.today()
pose_util.convertGraph('./whole_model/my_model.h5', './frozen_graphs', 3, 'pose', 'pose_graph_def' + today.strftime("%d_%m-%H_%M_%S") +'.pb', K=keras);

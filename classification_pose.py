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
import matplotlib.pyplot as plt
import pose_util
import os

print(tf.__version__)

#TODO iterate through many CSVs and concatenate
sensor_data_frame = pd.read_csv("/Users/205314/Documents/SYNISR/SensorSamples/IRADSensorLog08_01_01_06_18.csv", sep=",", index_col=12)
sensor_label_frame = pd.read_csv("/Users/205314/Documents/SYNISR/SensorSamples/IRADSensorLog08_01_01_06_18.csv", sep=",", dtype=int, usecols=[12])

print(sensor_data_frame.head());
sensor_data_ndarray = sensor_data_frame.values;

print(sensor_label_frame.head());
sensor_label_ndarray = sensor_label_frame.values;

# Randomize order of array
sensor_data_ndarray, sensor_label_ndarray = pose_util.shuffle_in_unison(sensor_data_ndarray, sensor_label_ndarray);

# Pick training set and test set
sensor_data_train = sensor_data_ndarray[1: int(len(sensor_data_ndarray)*.6)];
sensor_data_test = sensor_data_ndarray[int(len(sensor_data_ndarray)*.6) : int(len(sensor_data_ndarray)*.8)];
sensor_data_validate = sensor_data_ndarray[int(len(sensor_data_ndarray)*.8) :len(sensor_data_ndarray)];

sensor_label_train = sensor_label_ndarray[1: int(len(sensor_label_ndarray)*.6)];
sensor_label_test = sensor_label_ndarray[int(len(sensor_label_ndarray)*.6) : int(len(sensor_label_ndarray)*.8)];
sensor_label_validate = sensor_label_ndarray[int(len(sensor_label_ndarray)*.8) : len(sensor_label_ndarray)];

class_names = ['standing', 'crouching', 'prone']
sensor_names = ['linearAccelerometerX', 'linearAccelerometerY',	'linearAccelerometerZ', 'accelerometerX', 'accelerometerY', 'accelerometerZ', 'gyroscopeX', 'gyroscopeY', 'gyroscopeZ',	'gameRotationX', 'gameRotationY', 'gameRotationZ']

print("Sensor data shape");
print(sensor_data_ndarray.shape);

print("sensor_data_train length: ", len(sensor_data_train));
print("sensor_data_test length: ", len(sensor_data_test));
print("sensor_label_train length: ", len(sensor_label_train));
print("sensor_label_test length: ", len(sensor_label_test));

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

# Define the model
model = keras.Sequential([
    #We don't need to flatten, we've already got 2d arrays
    #keras.layers.Flatten(input_shape=(28, 28)),
    keras.layers.Dense(128, activation=tf.nn.relu),
    keras.layers.Dense(3, activation=tf.nn.softmax)
])

# Compile the model
model.compile(optimizer=tf.train.AdamOptimizer(),
              loss='sparse_categorical_crossentropy',
              metrics=['accuracy'])

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
          callbacks=[cp_callback, cp_callback_2])

# Save whole model including weights plus current state
# Save entire model to a HDF5 file
model.save(filepath='./whole_model/my_model.h5')

test_loss, test_acc = model.evaluate(sensor_data_test, sensor_label_test)

print('Test accuracy:', test_acc)

predictions = model.predict(sensor_data_validate)

predictions[0]

print(np.argmax(predictions[0], axis=0));

print(sensor_label_validate[0]);

# Plot the first 25 test images, their predicted label, and the true label
# Color correct predictions in green, incorrect predictions in red
# plt.figure(figsize=(10, 10))
# for i in range(25):
#     plt.subplot(5, 5, i + 1)
#     plt.xticks([])
#     plt.yticks([])
#     plt.grid('off')
#     plt.imshow(test_images[i], cmap=plt.cm.binary)
#     predicted_label = np.argmax(predictions[i])
#     true_label = test_labels[i]
#     if predicted_label == true_label:
#         color = 'green'
#     else:
#         color = 'red'
#     plt.xlabel("{} ({})".format(class_names[predicted_label],
#                                 class_names[true_label]),
#                color=color)

# Grab an image from the test dataset
# img = test_images[0]
#
# print(img.shape)
#
# # Add the image to a batch where it's the only member.
# img = (np.expand_dims(img, 0))
#
# print(img.shape)
#
# predictions = model.predict(img)
#
# print(predictions)
#
# prediction = predictions[0]
#
# np.argmax(prediction)

import tensorflow as tf

from tensorflow import keras

# from keras.applications.resnet50 import (ResNet50, decode_prediction, preprocess_input)

model = keras.applications.resnet50.ResNet50(weights='imagenet')

model.save('pys/resnet50')
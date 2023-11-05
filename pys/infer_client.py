import tensorflow as tf
import numpy as np

import grpc
import infer_pb2
import infer_pb2_grpc

from tensorflow import keras

# from keras.preprocessing import image
# from keras.applications.resnet50 import decode_predictions, preprocess_input

#准备推理数据
img = keras.preprocessing.image.load_img('pys/elephant.jpg', target_size = (224, 224))
x = keras.preprocessing.image.img_to_array(img)
x = np.expand_dims(x, axis = 0)
x = keras.applications.resnet50.preprocess_input(x) # (1, 224, 224, 3)

#进行推理
with grpc.insecure_channel('localhost:5000') as chan:
    stud = infer_pb2_grpc.InferStub(chan)
    request = infer_pb2.InferRequest(shape = x.shape, data = x.reshape(-1))
    res = stud.Infer(request)
    preds = np.array(res.data).reshape(res.shape)
    print(keras.applications.resnet50.decode_predictions(preds, top = 3)[0])

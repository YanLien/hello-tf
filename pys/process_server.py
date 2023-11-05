import tensorflow as tf
import numpy as np
import logging

import io
import grpc
import infer_pb2
import infer_pb2_grpc
from PIL import Image


from tensorflow import keras
from keras_preprocessing.image.utils import _PIL_INTERPOLATION_METHODS
from infer_pb2 import PreProcessResponse, PostProcessResponse, Pred

from concurrent import futures

class Processer(infer_pb2_grpc.ProcessServicer):
    def PreProcess(self, request, context):
        img = Image.open(io.BytesIO(request.image))
        img = img.convert('RGB')
        resample = _PIL_INTERPOLATION_METHODS['nearest']
        img = img.resize((224, 224), resample)

        x = keras.preprocessing.image.img_to_array(img)
        x = np.expand_dims(x, axis = 0)
        x = keras.applications.resnet50.preprocess_input(x)
        return PreProcessResponse(shape = x.shape, data=x.reshape(-1))

    def PostProcess(self, request, context):
        preds = np.array(request.data).reshape(request.shape).astype(np.float32)
        preds = keras.applications.resnet50.decode_predictions(preds, top = 3)[0]

        preds = [Pred(name = name, probability=p) for _, name, p in preds]
        return PostProcessResponse(preds = preds)

def serve():
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=2))
    infer_pb2_grpc.add_ProcessServicer_to_server(Processer(), server)
    addr = '0.0.0.0:5001'
    server.add_insecure_port(addr)
    server.start()
    print('Listen on:', addr)
    server.wait_for_termination()

# if name == 'main’的意思是：当.py文件被直接运行时，if name == 'main’之下的代码块将被运行；
# 当.py文件以模块形式被导入时，if name == 'main’之下的代码块不被运行。
if __name__ == '__main__':
    logging.basicConfig() 
    serve()
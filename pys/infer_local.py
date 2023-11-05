# 忽略错误
import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'

# 引入库
import tensorflow as tf
import numpy as np

from tensorflow import keras

# from keras.preprocessing import image
# from keras.applications.resnet50 import decode_predictions, preprocess_input

# 加载模型
loaded = tf.saved_model.load('pys/resnet50')
infer = loaded.signatures['serving_default']

# 准备推理数据
img = keras.preprocessing.image.load_img('pys/elephant.jpg', target_size = (224, 224))
x = keras.preprocessing.image.img_to_array(img)
x = np.expand_dims(x, axis = 0)
x = keras.applications.resnet50.preprocess_input(x)

# 进行推理
preds = infer(tf.constant(x))['predictions'].numpy()
print(keras.applications.resnet50.decode_predictions(preds,top = 3)[0])

print('x: ', x.shape, x.dtype)
with open('pys/requset', 'wb') as f :
    f.write(x.tobytes())
#!/usr/bin/env python

import socket
import struct
import numpy as np
import tensorflow as tf
from tensorflow import keras
import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="komber"
)

model = tf.keras.models.load_model('activity_model.h5')
class_names = ['Berjalan', 'Berlari', 'Berhenti', 'Berhenti', 'Berjalan', 'Berjalan']

# Prepare TCP server
TCP_IP = '192.168.1.6'
TCP_PORT = 31006
SPORT = 31007
BUFFER_SIZE = 5*4  # Normally 1024, but we want fast response

NS2S = 1.0 / 1e9

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind((TCP_IP, TCP_PORT))
s.listen(1)

conn, addr = s.accept()

DATA_SIZE = 5


idx = 0
N = 200
X = np.zeros((N,3), dtype=np.float32)
print( 'Connection address:', addr)
while 1:
	try:
		data = conn.recv(BUFFER_SIZE)
		if not data: continue

		data = struct.unpack('>'+str(DATA_SIZE)+'f', data[0:4*DATA_SIZE])
		

		X[idx, 0:3] = data[0:3]
		latitude = data[3]
		longitude = data[4]

		idx += 1		
		if idx >= N:
			print('Predicted:')
			t = np.reshape(X, (1,) + X.shape)
			predicted = model.predict(t)
			ans = predicted.argmax(axis=-1)
			print(class_names[ans[0]])
			X = np.zeros((N,3), dtype=np.float32)
			idx = 0
			print('Received data ', latitude,longitude)
			
			mycursor = mydb.cursor()

			sql = "INSERT INTO status (nama, latitude, longitude, aktivitas) VALUES (%s, %s, %s, %s)"
			val = ("Rizaldi", latitude, longitude, class_names[ans[0]])
			mycursor.execute(sql, val)

			mydb.commit()
			
		
	except:
		break
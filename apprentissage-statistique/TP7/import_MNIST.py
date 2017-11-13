import numpy as np
import matplotlib.pyplot as plt
import matplotlib.image as mpimg
import scipy.spatial as ss
import scipy.io as sio 

data = sio.loadmat('data/mnist_digits.mat')
X = data['x']
Y = data['y']

##Selection de D images au hasard
D = 300 
X_D = []
Y_D = []
it = np.random.choice(range(0,len(X)),D,False)
for i in it : 
    X_D.append(X[i])
    Y_D.append(Y[i])
    
# print(np.histogram(Y_D))

##Séparer les images en données d'entrainements et de test
x = 1./3.
X_train = []
Y_train = []
X_test = []
Y_test = []

for i in range(int(x*D)):
    X_train.append(X_D[i])
    Y_train.append(Y_D[i])
for i in range(int(D - x*D)):
    X_test.append(X_D[i+int(x*D)])
    Y_test.append(Y_D[i+int(x*D)])

##Afficher quelques images
a =  np.reshape(X_test[1],(28,28))
plt.imshow(a)
plt.show()



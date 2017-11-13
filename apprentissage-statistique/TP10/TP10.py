#from import_data import *

import numpy as np
import numpy.linalg as lg
import matplotlib.pyplot as plt
import scipy.spatial as ss
import random

from PIL import Image



K=20
#X = XA_train
img = Image.open('Lenna.png')
n1 = 126
img3 = img
img3.thumbnail((n1, n1), Image.ANTIALIAS) # resizes image in-place
# plt.imshow(img3)
# plt.show()
img3 = np.resize(img,(n1,n1,3))
X = np.reshape(img3,(n1*n1,3))
X = X/255
#precision 10^-j
j = 2
e = 10**(-j)
#maximum d'itération pour les fonctions 
max = 20


def RandomMatrix (nbx,nby,min,max) :
    return np.array([[random.randint(min, max) for i in range(nby)] for j in range(nbx)])
  
def initialize_mu(K,X):
    it = np.random.choice(range(len(X)),K,False)
    M = np.array([X[i] for i in it])
    return M

def Xmu(X,mu):
    n = np.shape(X)[0]
    K = np.shape(mu)[0]
    return np.array([[lg.norm(X[i]-mu[k])**2 for k in range(K)] for i in range(n)])
    
def J(X,mu,Z):
    Xm = Xmu(X,mu)
    return np.trace(np.dot(Z,np.transpose(Xm)))


def Z(X,mu):
    n = np.shape(X)[0]
    K = np.shape(mu)[0]
    D = ss.distance.cdist(X,mu)
    M = np.array([[(1 if j == np.argmin(D[i]) else 0) for j in range(K)] for i in range(n)])
    return M

def update_mu(X,Z):
    n = np.shape(X)[0]
    p = np.shape(X)[1]
    A1 = np.dot(np.transpose(Z),X)
    A2 = np.dot(np.transpose(Z),np.ones(n))
    return np.transpose(np.transpose(A1)/A2)
    
    
def k_means(K,X):
    mu_k = initialize_mu(K,X)
    
    Z_k = Z(X,mu_k)
    mu_k = update_mu(X,Z_k)
    J_l = J(X,mu_k,Z_k)
    J_0 = J_l
    print(J_l)
    Z_k = Z(X,mu_k)
    mu_k = update_mu(X,Z_k)
    J_k = J(X,mu_k,Z_k)
    print(J_k)
    k=0
    while np.abs(J_k-J_l) >= e and k<max:
        Z_k = Z(X,mu_k)
        mu_k = update_mu(X,Z_k)
        J_next = J(X,mu_k,Z_k)
        J_l = J_k
        J_k = J_next
        print(J_k)
        k+=1
    return mu_k
    
def max_mu(x,mu):
    norm_max = lg.norm(x)
    max = 0
    for i in range(len(mu)):
        x1 = lg.norm(x-mu[i])
        if x1 < norm_max:
            max = i
            norm_max = x1
    return max
    
    
res = k_means(K,X)
for i in range(n1):
    for j in range(n1):
        x = img3[i][j]/255
        k = max_mu(x,res)
        y = res[max_mu(x,res)]*255
        img3[i][j] = y
plt.imshow(img3)
plt.show()




    
    
    

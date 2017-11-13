import numpy as np
import matplotlib.pyplot as plt
import numpy.linalg as lg
import scipy.spatial as ss

n = 100
p=1
x = 1./3. #train/test+train

#Paramètres 
l = 10**(-5)
sigma = 10**(-1)

#Création des données 
X = np.random.rand(n)
Y = np.exp(3*X) + np.random.randn(n)

#K = ss.distance.cdist([X_train[j]],[X_test[i]],'sqeuclidean')

##Séparer les images en données d'entrainements et de test
X_train = []
Y_train = []
X_test = []
Y_test = []

for i in range(int(x*n)):
    X_train.append(X[i])
    Y_train.append(Y[i])
for i in range(int(n - x*n)+1):
    X_test.append(X[i+int(x*n)])
    Y_test.append(Y[i+int(x*n)])
    
##Noyau 

def k(x,y,sigma):
    return np.exp(-((x-y)**2)/(2*(sigma**2)))

def K(X1,X2,sigma):
    n1 = len(X1)
    n2 = len(X2)
    M = np.array([[0. for i in range(n1)] for j in range(n2)])
    for i in range(n1):
        for j in range(n2):
            (M[j])[i] = k(X1[i],X2[j],sigma)
    return M
    
##On calcule la solution de la regression
alpha = lg.solve(K(X_train,X_train,sigma)+n*l*np.eye(len(X_train)),Y_train)

A = np.dot(K(X_train,X_test,sigma),alpha)

def f(x):
    X1 = np.array([x])
    return np.sum(np.dot(K(X_train,X1,sigma),alpha))

plt.figure(1)
X_plot = np.arange(0,1,0.01)
plt.scatter(X_test,Y_test,color='r')
plt.plot(X_plot,np.exp(3*X_plot))
plt.plot(X_plot,np.dot(K(X_train,X_plot,sigma),alpha))
#plt.scatter(X_test,A)


plt.figure(2)
plt.scatter(X_test,(Y_test-A)**2)
plt.show()


###PARTIE IMAGE 



    

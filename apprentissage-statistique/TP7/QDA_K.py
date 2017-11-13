""" Discrimnant de Fischer QUADRATIQUE, calcul des gradients nécessaires """ 

import numpy as np
import matplotlib.pyplot as plt
import numpy.linalg as lg

from basic_functions import *
from optimization import *
from trace import *

K=10

def pi(Y):
    pi_Y = [0 for i in range(K)]
    for k in Y:
        pi_Y[int(k)] += 1
    return pi_Y


## Modèle considéré 
def h(theta,x,pi_Y,k):
    """ h_{theta}(x) """ 
    p = len(x)
    (mu,Sigma) = theta
    mu_k = mu[k]
    Sigma_k = Sigma[k]
    X_mu = x-mu_k
    A1 = -(1/2)*np.dot(np.transpose(X_mu),lg.solve(Sigma_k,X_mu))
    A2 = lg.det(Sigma_k)
    return pi_Y[k]*np.exp(A1)/np.sqrt(A2)
    
def H(theta,x,pi_Y,k):
    R = 0 
    for j in range(K):
        R = R + h(theta,x,pi_Y,j)
    return h(theta,x,pi_Y,k)/R
   
   
# phi_QDA = lambda theta,x,pi_Y : sigma(f_QDA(theta,x,pi_Y))
    
    
## Risque et son gradient
def J_QDA(theta,X,Y,pi_Y):
    """ Risque""" 
    R = 0 
    n = np.shape(X)[0]
    for i in range(n):
        y_i = int(Y[i])
        R = R + np.log(H(theta,X[i],pi_Y,y_i))
    R = -(1/n)*R
    return R
    
def dJ_mu(theta,X,Y,pi_Y,k):
    print("Calcul de dJ_mu pour k = ",k)
    """ Gradient par rapport à Sigma"""
    n = np.shape(X)[0]
    p=np.shape(X)[1]
    (mu,Sigma) = theta
    mu_k = mu[k]
    Sigma_k = Sigma[k]
    R= np.zeros(p)
    for i in range(n):
        # print(i/n*100)
        X_mu = X[i]-mu_k
        A_k = lg.solve(Sigma_k,X_mu)
        H1 = H(theta,X[i],pi_Y,k)
        if (int(Y[i]) == k):
            H1 = H1-1
        R = R + H1*A_k
    return (1/n)*R

# dJ = dJ_mu(theta,X,Y,pi_Y,0)
    
def dJ_Sigma(theta,X,Y,pi_Y,k):
    """ Gradient par rapport à Sigma"""
    print("Calcul de dJ_Sigma pour k = ",k)
    n = np.shape(X)[0]
    p=np.shape(X)[1]
    (mu,Sigma) = theta
    mu_k = mu[k]
    Sigma_k = Sigma[k]
    R= np.zeros(p)
    for i in range(n):
        # print(i/n*100)
        X_mu = X[i]-mu_k
        #on a pas le choix ici , on doit calculer l'inverse (cf B_k dans rapport)
        Omega_k = lg.inv(Sigma_k)
        Omega_kT = np.transpose(Omega_k)
        A1 = np.dot(X_mu.reshape(p,1),X_mu.reshape(1,p))
        B_k = np.dot(Omega_kT,np.dot(A1,Omega_kT)-np.eye(p))
        H1 = H(theta,X[i],pi_Y,k)
        if (int(Y[i]) == k):
            H1 = H1-1
        R = R + H1*B_k
    return (1/(2*n))*R

# dJS = dJ_Sigma(theta,X,Y,pi_Y,0)

def dJ_QDA(theta,X,Y,pi_Y):
    p=np.shape(X)[1]
    """ Gradient""" 
    dJmu = np.array([np.zeros(p) for i in range(K)])
    dJSigma = np.array([np.eye(p) for i in range(K)])
    for i in range(K):
        dJmu[i] = dJ_mu(theta,X,Y,pi_Y,i)
        dJSigma[i] = dJ_Sigma(theta,X,Y,pi_Y,i)
    return (dJmu,dJSigma)
    
    
### Apprentissage
def QDA_K(X_train,Y_train,X_test,Y_test,verbose=0):
    p = np.shape(X_train)[1]
    n= np.shape(X_train)[0]
    #Initialisation 
    print("Intialisation")
    mu = np.array([np.zeros(p) for i in range(K)])
    Sigma = np.array([np.eye(p) for i in range(K)])
    theta_0=(mu,Sigma)
    pi_Y = pi(Y_train)
    #descente de gradient
    print("Résolution de Gradient")
    theta = gradient_pas_constant3(X_train,Y_train,J_QDA,dJ_QDA,10,theta_0,pi_Y)
    # pi_Y = pi(Y_train)
    # E_train = error(X_train,Y_train,phi_QDA,theta,pi_Y)
    # E_test= error(X_test,Y_test,phi_QDA,theta,pi_Y)
    # #tracés
    # if (verbose):
    #     print_data(X_train,Y_train)
    #     trace_phi(X_train,theta,phi_QDA,pi_Y)
    #     print_data(X_test,Y_test)
    #     trace_phi(X_test,theta,phi_QDA,pi_Y)
    #     plt.show()
    # print("Erreur d'entrainement : ",E_train*100,"%")
    # print("Erreur de test : ",E_test*100,"%")
    return theta
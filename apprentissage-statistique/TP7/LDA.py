""" Discrimnant de Fischer, calcul des gradients nécessaires """ 

import numpy as np
import matplotlib.pyplot as plt
import numpy.linalg as lg

from basic_functions import *
from optimization import *
from trace import *
    
## Modèle considéré 
def f_LDA(theta,x,pi_Y):
    """ f_{theta}(x) """ 
    (mu1,mu0,Sigma) = theta
    X_mu1 = x-mu1
    X_mu0 = x-mu0
    A1 = -(1/2)*np.dot(np.transpose(X_mu1),lg.solve(Sigma,X_mu1))
    A2 = (1/2)*np.dot(np.transpose(X_mu0),lg.solve(Sigma,X_mu0))
    A4 = np.log(pi_Y/(1-pi_Y))
    return A1+A2+A4
   
   
phi_LDA = lambda theta,x,pi_Y : sigma(f_LDA(theta,x,pi_Y))
    
    
## Risque et son gradient
def J_LDA(theta,X,Y,pi_Y=0.5):
    """ Risque""" 
    (mu1,mu0,Sigma) = theta
    R = 0 
    n = np.shape(X)[0]
    for i in range(n):
        if int(Y[i]):
            h = sigma(f_LDA(theta,X[i],pi_Y))
            R = R+np.log(h)
        else:
            h = sigma(-f_LDA(theta,X[i],pi_Y))
            R = R+np.log(h)
    R = -(1/n)*R
    return R

def nu(theta,X,pi_Y):
    """ Fonction auxilliaire""" 
    m = []
    for x in X:
        m.append([sigma(f_LDA(theta,x,pi_Y))])
    return np.array(m) 
    
def dJ_mu1(theta,X,Y,pi_Y):
    """ Gradient par rapport à mu1"""
    (mu1,mu0,Sigma) = theta
    n = np.shape(X)[0]
    return -(1/n)*lg.solve(Sigma,np.dot(np.transpose(X-mu1),Y-nu(theta,X,pi_Y)).T[0])

def dJ_mu0(theta,X,Y,pi_Y):
    """ Gradient par rapport à mu0"""
    (mu1,mu0,Sigma) = theta
    n = np.shape(X)[0]
    return (1/n)*lg.solve(Sigma,np.dot(np.transpose(X-mu0),Y-nu(theta,X,pi_Y)).T[0])
    
def dJ_Sigma(theta,X,Y,pi_Y):
    """ Gradient par rapport à Sigma"""
    (mu1,mu0,Sigma) = theta
    p = np.shape(X)[1]
    R = np.zeros((p,p))
    n = np.shape(X)[0]
    #On calcule l'inverse explicite de Sigma (car n peut etre grand) 
    Omega = lg.inv(Sigma)
    Omega_T = np.transpose(Omega)
    for i in range(n):
        nu_i = sigma(f_LDA(theta,X[i],pi_Y))
        Xi_mu0 = X[i]-mu0
        A0 = np.dot(Xi_mu0.reshape(p,1),Xi_mu0.reshape(1,p))
        Xi_mu1 = X[i]-mu1
        A1 = np.dot(Xi_mu1.reshape(p,1),Xi_mu1.reshape(1,p))
        Yi_nu = (Y[i]-nu_i)[0]
        R = R + Yi_nu*np.dot((A0-A1),Omega_T)
    R = np.dot(Omega_T,R)
    R = (1/(2*n))*R
    return R

def dJ_LDA(theta,X,Y,pi_Y=0.5):
    """ Gradient""" 
    A_mu1 = dJ_mu1(theta,X,Y,pi_Y)
    A_mu0 = dJ_mu0(theta,X,Y,pi_Y)
    A_Sigma = dJ_Sigma(theta,X,Y,pi_Y)
    return (A_mu1,A_mu0,A_Sigma)
    
### Apprentissage
def LDA(X_train,Y_train,X_test,Y_test,verbose=0):
    p = np.shape(X_train)[1]
    n= np.shape(X_train)[0]
    #Initialisation 
    mu1 = np.random.random(p)#np.zeros(p) #
    mu0 = np.random.random(p)#np.zeros(p) #
    Sigma = np.eye(p) 
    theta_0 = (mu1,mu0,Sigma)
    #descente de gradient
    theta = gradient_pas_constant2(X_train,Y_train,J_LDA,dJ_LDA,0.1,theta_0)
    pi_Y = pi(Y_train)
    E_train = error(X_train,Y_train,phi_LDA,theta,pi_Y)
    E_test= error(X_test,Y_test,phi_LDA,theta,pi_Y)
    #tracés
    if (verbose):
        print_data(X_train,Y_train)
        trace_phi(X_train,theta,phi_LDA,pi_Y)
        print_data(X_test,Y_test)
        trace_phi(X_test,theta,phi_LDA,pi_Y)
        plt.show()
    print("Erreur d'entrainement : ",E_train*100,"%")
    print("Erreur de test : ",E_test*100,"%")
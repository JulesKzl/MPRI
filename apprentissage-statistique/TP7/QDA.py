""" Discrimnant de Fischer QUADRATIQUE, calcul des gradients nécessaires """ 

import numpy as np
import matplotlib.pyplot as plt
import numpy.linalg as lg

from basic_functions import *
from optimization import *
from trace import *
    
## Modèle considéré 
def f_QDA(theta,x,pi_Y):
    """ f_{theta}(x) """ 
    (mu1,mu0,Sigma1,Sigma0) = theta
    X_mu1 = x-mu1
    X_mu0 = x-mu0
    A1 = -(1/2)*np.dot(np.transpose(X_mu1),lg.solve(Sigma1,X_mu1))
    A2 = (1/2)*np.dot(np.transpose(X_mu0),lg.solve(Sigma0,X_mu0))
    A3 = (1/2)*np.log(lg.det(Sigma0)/lg.det(Sigma1))
    A4 = np.log(pi_Y/(1-pi_Y))
    return A1+A2+A3+A4
   
   
phi_QDA = lambda theta,x,pi_Y : sigma(f_QDA(theta,x,pi_Y))
    
    
## Risque et son gradient
def J_QDA(theta,X,Y,pi_Y=0.5):
    """ Risque""" 
    R = 0 
    n = np.shape(X)[0]
    for i in range(n):
        if int(Y[i]):
            h = sigma(f_QDA(theta,X[i],pi_Y))
            R = R+np.log(h)
        else:
            h = sigma(-f_QDA(theta,X[i],pi_Y))
            R = R+np.log(h)
    R = -(1/n)*R
    return R

def nu(theta,X,pi_Y):
    """ Fonction auxilliaire""" 
    m = []
    for x in X:
        m.append([sigma(f_QDA(theta,x,pi_Y))])
    return np.array(m) 
    
def dJ_mu1(theta,X,Y,pi_Y):
    """ Gradient par rapport à mu1"""
    (mu1,mu0,Sigma1,Sigma0) = theta
    n = np.shape(X)[0]
    return -(1/n)*lg.solve(Sigma1,np.dot(np.transpose(X-mu1),Y-nu(theta,X,pi_Y)).T[0])

def dJ_mu0(theta,X,Y,pi_Y):
    """ Gradient par rapport à mu0"""
    (mu1,mu0,Sigma1,Sigma0) = theta
    n = np.shape(X)[0]
    return (1/n)*lg.solve(Sigma0,np.dot(np.transpose(X-mu0),Y-nu(theta,X,pi_Y)).T[0])
    
def dJ_Sigma1(theta,X,Y,pi_Y):
    """ Gradient par rapport à Sigma"""
    (mu1,mu0,Sigma1,Sigma0) = theta
    p = np.shape(X)[1]
    R = np.zeros((p,p))
    n = np.shape(X)[0]
    #On calcule l'inverse explicite de Sigma (car n peut etre grand) 
    Omega1 = lg.inv(Sigma1)
    Omega1_T = np.transpose(Omega1)
    for i in range(n):
        nu_i = sigma(f_QDA(theta,X[i],pi_Y))
        Xi_mu1 = X[i]-mu1
        A1 = np.dot(Xi_mu1.reshape(p,1),Xi_mu1.reshape(1,p))
        Yi_nu = (Y[i]-nu_i)[0]
        R = R + Yi_nu*(np.dot(A1,Omega1_T)-np.eye(p))
    R = np.dot(Omega1_T,R)
    R = -(1/(2*n))*R
    return R

def dJ_Sigma0(theta,X,Y,pi_Y):
    """ Gradient par rapport à Sigma"""
    (mu1,mu0,Sigma1,Sigma0) = theta
    p = np.shape(X)[1]
    R = np.zeros((p,p))
    n = np.shape(X)[0]
    #On calcule l'inverse explicite de Sigma (car n peut etre grand) 
    Omega0 = lg.inv(Sigma0)
    Omega0_T = np.transpose(Omega0)
    for i in range(n):
        nu_i = sigma(f_QDA(theta,X[i],pi_Y))
        Xi_mu0 = X[i]-mu0
        A0 = np.dot(Xi_mu0.reshape(p,1),Xi_mu0.reshape(1,p))
        Yi_nu = (Y[i]-nu_i)[0]
        R = R + Yi_nu*(np.dot(A0,Omega0_T)-np.eye(p))
    R = np.dot(Omega0_T,R)
    R = (1/(2*n))*R
    return R

def dJ_QDA(theta,X,Y,pi_Y=0.5):
    """ Gradient""" 
    A_mu1 = dJ_mu1(theta,X,Y,pi_Y)
    A_mu0 = dJ_mu0(theta,X,Y,pi_Y)
    A_Sigma1 = dJ_Sigma1(theta,X,Y,pi_Y)
    A_Sigma0 = dJ_Sigma0(theta,X,Y,pi_Y)
    return (A_mu1,A_mu0,A_Sigma1,A_Sigma0)
    
### Apprentissage
def QDA(X_train,Y_train,X_test,Y_test,verbose=0):
    p = np.shape(X_train)[1]
    n= np.shape(X_train)[0]
    #Initialisation 
    mu1 = np.zeros(p) #np.random.random(p)
    mu0 = np.zeros(p) #np.random.random(p)
    Sigma1 = np.eye(p) 
    Sigma0 = np.eye(p)
    theta_0 = (mu1,mu0,Sigma1,Sigma0)
    #descente de gradient
    theta = gradient_pas_constant2(X_train,Y_train,J_QDA,dJ_QDA,10,theta_0)
    pi_Y = pi(Y_train)
    E_train = error(X_train,Y_train,phi_QDA,theta,pi_Y)
    E_test= error(X_test,Y_test,phi_QDA,theta,pi_Y)
    #tracés
    if (verbose):
        print_data(X_train,Y_train)
        trace_phi(X_train,theta,phi_QDA,pi_Y)
        print_data(X_test,Y_test)
        trace_phi(X_test,theta,phi_QDA,pi_Y)
        plt.show()
    print("Erreur d'entrainement : ",E_train*100,"%")
    print("Erreur de test : ",E_test*100,"%")
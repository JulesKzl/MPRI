""" calcul du prédicteur de classification obtenu par régression logistique en utilisant une méthode de descente de gradient """
import numpy as np
import matplotlib.pyplot as plt
import numpy.linalg as lg

from basic_functions import *
from optimization import *
from trace import *

## Modèle considéré 
f = lambda w,x :np.dot(w,np.transpose(x))
phi = lambda w,x,_ : sigma(f(w,x))

## Risque et son gradient
def J(w,X,Y):
    R = 0 
    n = np.shape(X)[0]
    for i in range(n):
        if int(Y[i]):
            R = R+np.log(sigma(np.dot(w,np.transpose(X[i]))))
        else:
            R = R+np.log(1 - sigma(np.dot(w,np.transpose(X[i]))))
    R = -(1/n)*R
    return R
    
def mu(w,X):
    """ Fonction auxilliaire"""
    m = []
    for x in X:
        m.append([sigma(np.dot(w,np.transpose(x)))])
    return np.array(m) 
    
def dJ(w,X,Y):
    n = np.shape(X)[0]
    return -(1/n)*np.dot(np.transpose(X),Y-mu(w,X)).T[0]

def H(w,X):
    m = []
    for x in X:
        mu_i = sigma(np.dot(w,np.transpose(x)))
        m.append(mu_i*(1-mu_i))
    D = np.diag(m) 
    return np.dot(np.dot(np.transpose(X),D),X)

## Apprentissage
def logistic_reg(X_train,Y_train,X_test,Y_test,verbose=0):
    n= np.shape(X_train)[0]
    #optimisation
    w = gradient_pas_constant(X_train,Y_train,J,dJ,1/n,0.1)
    # w = gradient_pas_variable(X_train,Y_train,J,dJ,1/n)
    # w = IRLS(X_train,Y_train,J,dJ,H,1/n)
    #tracés
    E_train = error(X_train,Y_train,phi,w)
    E_test = error(X_test,Y_test,phi,w)
    if (verbose):
        print_data(X_train,Y_train)
        trace_phi(X_train,w,phi)
        print_data(X_test,Y_test)
        trace_phi(X_test,w,phi)
        plt.show()
    print("Erreur d'entrainement : ",E_train*100,"%")
    print("Erreur de test : ",E_test*100,"%")







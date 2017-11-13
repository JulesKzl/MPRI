import numpy as np
import numpy.linalg as lg
import matplotlib.pyplot as plt

from basic_functions import *
from trace import *

def cut(X,Y):
    """ Sépare les données selon leur classe """ 
    X1_1 = []
    X2_1 = []
    X1_0 = []
    X2_0 = []
    n = len(X)
    for i in range(n):
        x = X[i]
        if int(Y[i]):
            X1_1.append(x[0])
            X2_1.append(x[1])
        else:
            X1_0.append(x[0])
            X2_0.append(x[1])
    return(np.array(X1_1),np.array(X2_1),np.array(X1_0),np.array(X2_0))
    
def phi_lin_reg(w,x,_):
    """ phi est proche de 1 quand le point est proche de la droite de la classe
    1 """ 
    (w1,w0)=w
    d1 = distance_point_droite(w1,x)
    d0 = distance_point_droite(w0,x)
    return d0/(d1+d0)
    
def solve_linear_reg(X,Y):
    """ Résoudre une regression linéaire en dimension 2 (X,Y)"""
    n = len(X)
    T = np.ones((n))
    X_aug = np.transpose([T,X])
    A = np.dot(np.transpose(X_aug), X_aug)
    w = lg.solve(A,np.dot(np.transpose(X_aug), Y))
    return w
    

def lin_reg_classification(X_train,Y_train,X_test,Y_test,verbose=0):
    (X_train1,Y_train1,X_train0,Y_train0) = cut(X_train,Y_train)
    w1 = solve_linear_reg(X_train1,Y_train1)
    w0 = solve_linear_reg(X_train0,Y_train0)
    w=(w1,w0)
    E_train = error(X_train,Y_train,phi_lin_reg,w)
    E_test = error(X_test,Y_test,phi_lin_reg,w)
    if (verbose):
        print_data(X_train,Y_train)
        trace_lin_reg(X_train,w)
        trace_phi(X_train,w,phi_lin_reg)
        print_data(X_test,Y_test)
        trace_lin_reg(X_test,w)
        trace_phi(X_test,w,phi_lin_reg)
        plt.show()
    print("Erreur d'entrainement : ",E_train*100,"%")
    print("Erreur de test : ",E_test*100,"%")

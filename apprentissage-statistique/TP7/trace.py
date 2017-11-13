""" Module pour les tracés de fonctions """ 
import numpy as np
import matplotlib.pyplot as plt

from basic_functions import *

def print_data(X,Y):
    """ On représente les données de X sous la forme d'un nuage bicolore de
    points en 2D : bleu pour 0, rouge pour 1 """
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
    plt.figure()
    plt.scatter(X1_0,X2_0,color='b')
    plt.scatter(X1_1,X2_1,color='r')

def trace_phi(X,w,phi,pi_Y=0):
    """ Trace la courbe de niveau pour 0.5 """ 
    (min,max) = min_max_data(X,0)
    X1 = np.arange(min-1,max+1, 0.1)
    (min,max) = min_max_data(X,1)
    Y1 = np.arange(min-1,max+1, 0.1)
    Z1 = np.array([[phi(w,[x1,y1],pi_Y) for x1 in X1] for y1 in Y1])
    CS = plt.contour(X1,Y1,Z1,np.arange(0,1,.5),colors='k')
    plt.clabel(CS,inline = 3,fontsize=10)
    plt.show()
    

def trace_lin_reg(X,w):
    """ Trace le resultat des deux regressions linéaires """ 
    (min,max) = min_max_data(X,0)
    X_plot = np.arange(min-1,max+1, 0.1)
    (w1,w0)=w
    Y_reg1 = np.polyval(w1[::-1], X_plot)
    plt.plot(X_plot,Y_reg1,color='r')
    Y_reg0 = np.polyval(w0[::-1], X_plot)
    plt.plot(X_plot,Y_reg0,color='b')
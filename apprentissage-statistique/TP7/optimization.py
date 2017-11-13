""" Fonctions d'optimisation numériques : méthode de descente de gradient à pas
constant, pas variable et algorithme des moindres carrés pondérés"""
import numpy as np
import matplotlib.pyplot as plt
import numpy.linalg as lg

from basic_functions import *

#precision 10^-j
j = 4
e = 10**(-j)
#maximum d'itération pour les fonctions 
max = 10


## méthode de gradient à pas constant
def gradient_pas_constant(X,Y,J,dJ,l,gamma):
    dJ_ridge = lambda w,X,Y : dJ(w,X,Y) + 2*l*w
    
    p = np.shape(X)[1]
    
    w_k = np.random.random(p)
    nu_0 = lg.norm(w_k)
    w_l = w_k + 1
    k=0
    while lg.norm(w_l-w_k) >= e*(1+nu_0) and k<max:
        v_k=dJ_ridge(w_k,X,Y)
        w_next=w_k-(1/gamma)*v_k
        w_l = w_k
        w_k = w_next
        k+=1
        #print("R(w*) =",J(w_k,X,Y))
        if (k%100 == 0):
            print("k=",k)
            print("w(k) =",w_k)
    print("k*=",k)
    print("w* =",w_k)
    print("R(w*) =",J(w_k,X,Y))
    return w_k
    

## méthode de gradient à pas variable 
def gradient_pas_variable(X,Y,J,dJ,l):
    dJ_ridge = lambda w,X,Y : dJ(w,X,Y) + 2*l*w
    J_ridge = lambda w,X,Y : J(w,X,Y) + l*lg.norm(w)**2
    
    p = np.shape(X)[1]
    
    w_k = np.random.random(p)
    nu_0 = lg.norm(w_k)
    w_l = w_k + 1
    k=0
    rho_0=1
    m=0.5
    
    while lg.norm(w_l-w_k) >= e*(1+nu_0) and k<max:
        v_k=dJ_ridge(w_k,X,Y)
        rho_k=rho_0
        
        while J_ridge(w_k-rho_k*v_k,X,Y)<=J(w_k,X,Y)-m*rho_k*lg.norm(v_k)**2:
            rho_k=rho_k/2
            
        w_next=w_k-rho_k*v_k
        w_l = w_k
        w_k = w_next
        k+=1
        #print("R(w*) =",J(w_k,X,Y))
        if (k%100 == 0):
            print("k=",k)
            print("w(k) =",w_k)
    print("k*=",k)
    print("w* =",w_k)
    print("R(w*) =",J(w_k,X,Y))
    return w_k
    

## algorithme des moindres carrés pondérés
def IRLS(X,Y,J,dJ,H,l):
    dJ_ridge = lambda w,X,Y : dJ(w,X,Y) + 2*l*w
    
    p = np.shape(X)[1]
    
    w_k = np.random.random(p)
    nu_0 = lg.norm(w_k)
    w_l = w_k + 1
    k=0
    while lg.norm(w_l-w_k) >= e*(1+nu_0) and k<max:
        v_k=dJ_ridge(w_k,X,Y)
        A = lg.solve(H(w_k,X),v_k)
        w_next=w_k-A
        w_l = w_k
        w_k = w_next
        k+=1
        #print("R(w*) =",J(w_k,X,Y))
        if (k%100 == 0):
            print("k=",k)
            print("w(k) =",w_k)
    print("k*=",k)
    print("w* =",w_k)
    print("R(w*) =",J(w_k,X,Y))
    return w_k
    

## méthode de gradient à pas constant (MULTIVARIABLE)
def gradient_pas_constant2(X,Y,J,dJ,gamma,theta_0):
    p = np.shape(X)[1]
    pi_Y = pi(Y)
    
    nu_0 = norm_nuple(theta_0)
    w_k = theta_0
    w_l = add_nuple(w_k,1)
    k=0
    
    while norm_nuple(sub_nuple(w_l,w_k)) >= e*(1+nu_0) and k<max:
        v_k=dJ(w_k,X,Y,pi_Y)
        #w_next = w_k - (1/gamma)*v_k
        w_next=sum_nuple(w_k,mult_nuple(v_k,-(1/gamma)))
        w_l = w_k
        w_k = w_next
        k+=1
        #print("R(w*) =",J(w_k,X,Y,pi_Y)
        if (k%100 == 0):
            print("k=",k)
            #print("w(k) =",w_k)
            print("R(w*) =",J(w_k,X,Y,pi_Y))
    print("k*=",k)
    #print("w* =",w_k)
    print("R(w*) =",J(w_k,X,Y,pi_Y))
    return w_k
    
def gradient_pas_constant3(X,Y,J,dJ,gamma,theta_0,pi_Y):
    p = np.shape(X)[1]
    nu_0 = norm_nuple(theta_0)
    w_k = theta_0
    w_l = add_nuple(w_k,1)
    k=0
    print("Debut de boucle d'opti")
    
    while k<max:#norm_nuple(sub_nuple(w_l,w_k)) >= e*(1+nu_0) and k<max:
        print("BOUCLE NUMERO : ",k)
        v_k=dJ(w_k,X,Y,pi_Y)
        #w_next = w_k - (1/gamma)*v_k
        w_next=sum_nuple(w_k,mult_nuple(v_k,-(1/gamma)))
        w_l = w_k
        w_k = w_next
        k+=1
        print("R(w*) =",J(w_k,X,Y,pi_Y))
        # if (k%100 == 0):
        #     print("k=",k)
        #     #print("w(k) =",w_k)
        #     print("R(w*) =",J(w_k,X,Y,pi_Y))
    print("k*=",k)
    #print("w* =",w_k)
    print("R(w*) =",J(w_k,X,Y,pi_Y))
    return w_k







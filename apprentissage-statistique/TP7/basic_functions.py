""" Fonctions usuelles sur les données """ 
import numpy as np
import matplotlib.pyplot as plt
import numpy.linalg as lg

def min_max_data(X,k):
    """ Trouver le minimum et la max de X pour sa k+1-ieme colonne """ 
    min = X[0][k]
    max = X[0][k]
    for x in X:
        if x[k] < min:
            min = x[k]
        if x[k] > max:
            max = x[k]
    return (min,max)
    
sigma = lambda z : 1./(1+np.exp(-z))

def pi(Y):
    """ π = P(Y = 1) """ 
    return np.sum(Y)/len(Y)
    
    
def distance_point_droite(w,v):
    """ Distance entre un point de coordonneés v et une droite de coefficient 
    directeur et ordonnée à l'origine w """
    (x_A,y_A) = v
    (p,m) = w
    return np.abs(m*x_A - y_A +p)/np.sqrt(1+m**2)
    
### Fonctions sur les tuples 
""" Norme d'un tuple """
def norm_nuple(theta):
    L = 0 
    for x in theta :
        L = L+lg.norm(x)**2
    return L
""" Somme de tuples """ 
sum_nuple = lambda a,b: tuple(map(lambda x,y : x+y,a,b))
""" Soustraction de tuples """
sub_nuple = lambda a,b: tuple(map(lambda x,y : x-y,a,b))
""" Multiplier le tuple par une constante """ 
mult_nuple = lambda a,c: tuple(map(lambda x : c*x,a))
""" Ajoute un entier au tuple """
add_nuple = lambda a,c: tuple(map(lambda x : c+x,a))

## Erreur de classification
def error(X,Y,phi,w,pi_Y=0):
    R = 0 
    n = len(X)
    for i in range(n):
        if (np.abs(phi(w,X[i],pi_Y)-int(Y[i])) > 0.5):
            R+=1
    return R/n
       


    
    
    
    
    
    

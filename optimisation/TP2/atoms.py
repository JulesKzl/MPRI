import math
import matplotlib.pyplot as plt
import numpy as np
import numpy.linalg as npl
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D


## conformation d'une nano-particule 
#precision 10^-j
j = 7
e = 10**(-j)
#maximum d'itération pour les fonctions 
max = 100000

#fonctions auxilliares
def u_to_X(u):
    n = len(u)
    N = (n+6)//3
    X1 = np.zeros(3)
    X2 = np.array([u[0],0,0])
    X3 = np.array([u[1],u[2],0])
    Xrest = [np.array([u[i],u[i+1],u[i+2]]) for i in range(3,n-1,3)]
    X = [X1]+[X2]+[X3]+Xrest
    return X
    
def X_to_u(X):
    n = len(X)
    x2 = X[1][0]
    x3 = X[2][0]
    y3= X[2][1]
    u = np.array([x2,x3,y3])
    u_rest = np.concatenate(X[3:])
    return np.concatenate((u,u_rest))
    
#Tracé
def trace(u):
    fig = plt.figure(1)
    ax = fig.add_subplot(111, projection='3d')
    X = np.array(u_to_X(u))
    xs = X[:,0]
    ys = X[:,1]
    zs = X[:,2]
    
    N = len(X)
    for i in range(N):
        for j in range(i+1,N):
            xs_ij = [xs[i],xs[j]]
            ys_ij = [ys[i],ys[j]]
            zs_ij = [zs[i],zs[j]]
            ax.plot(xs_ij, ys_ij, zs_ij,'r')
    ax.scatter(xs, ys, zs,'r')
    
    ax.set_xlabel('X Label')
    ax.set_ylabel('Y Label')
    ax.set_zlabel('Z Label')
    
    plt.show()
    
#1. on choisit (N+1) points formant un simplexe
def init(N):
    u_init=[]
    for i in range(3*N-5):
        u_init.append(np.random.uniform(-2,2,3*N-6))
    return u_init

#defintion des fonctions du problèmes

V = lambda r : 1*r**(-12) - 2*r**(-6)

def J(u):
    n = len(u)
    N = (n+6)//3
    #mise en forme des données
    X = u_to_X(u)
    #calcul de J
    res = 0
    for i in range(N):
        for j in range(i+1,N):
            r_ij = npl.norm(X[i]-X[j])
            assert (r_ij != 0)
            res = res+V(r_ij)
    return res

#Algorithme de Nelder-Mead
def nelder_mead(J,u_init):
    x_plot=[]
    y_plot=[]
    N = len(u_init)
    n=len(u_init[0])
    u=u_init
    k=0
    while npl.norm(u[-1]-u[-2]) > e and k<max:
        #2. Réindexe de façon à ce que J(u[1]) <= J(u[2]) <= ... <= J(u_N+1))
        u=np.array(sorted(u,key=J))
        #3. u_0 le centre de gravité de (u_1,...,u_N)
        u_0=u[:-1].sum(axis=0)/n
        if (k%10)==0 :
            J_k = J(u_0)
            x_plot.append(k)
            y_plot.append(J_k)
            if (k%1000)==0:
                print(k)
                print(J_k)
        #4. On caclule le point réfléchi
        u_r=u_0+(u_0-u[-1])
        #Etirement
        if J(u_r)<J(u[-2]):
            u_e=u_0+2*(u_0-u[-1])
            if J(u_e)<J(u_r):
                u[-1]=u_e
            else:
                u[-1]=u_r
            #retour debut (2)
        #Contraction
        elif J(u_r)>J(u[-2]):
            u_c=u[-1]+0.5*(u_0-u[-1])
            if J(u_c)<=J(u[-2]):
                u[-1]=u_c
                #retour début (2)
            else:
                hom=lambda v : u[0]+0.5*(v-u[0])
                u[1:]=hom(u[1:])
        k+=1
    print(k)
    print(J(u[0]))
    # trace(u[0])
    plt.figure(2)
    plt.axis([100,max, -50, 10])
    plt.plot(x_plot,y_plot)
    plt.show()
    return(u,k)

    
#Fonctions de test
def test_min(max):
    min_u = np.random.uniform(-2,2,3*N-6)
    min = J(min_u)
    k=0
    while (k<max):
        u_test = np.random.uniform(-2,2,3*N-6)
        J1 = J(u_test)
        if J1 < min:
            min_u = u_test
            min = J1
        k+=1
    print(min)
    return min_u


##Execution
N=4
u_test = np.random.uniform(-2,2,3*N-6)
u_init = init(N)
u,k = nelder_mead(J,u_init)
u_1 = np.array([1,0.5,np.sqrt(3/4),0.5,1/3,np.sqrt(23/36)])
print(J(u_1))
u_2 = np.array([1,0.5,np.sqrt(3/4),0.5,1/3,-np.sqrt(23/36)])
print(J(u_2))
u_3 = np.array([1,0.5,-np.sqrt(3/4),0.5,-1/3,np.sqrt(23/36)])
print(J(u_3))
u_4 = np.array([1,0.5,-np.sqrt(3/4),0.5,-1/3,-np.sqrt(23/36)])
print(J(u_4))
u_5 = np.array([-1,-0.5,np.sqrt(3/4),-0.5,1/3,np.sqrt(23/36)])
print(J(u_5))
u_6 = np.array([-1,-0.5,np.sqrt(3/4),-0.5,1/3,-np.sqrt(23/36)])
print(J(u_6))
u_7 = np.array([-1,-0.5,-np.sqrt(3/4),-0.5,-1/3,np.sqrt(23/36)])
print(J(u_7))
u_8 = np.array([-1,-0.5,-np.sqrt(3/4),-0.5,-1/3,-np.sqrt(23/36)])
print(J(u_8))




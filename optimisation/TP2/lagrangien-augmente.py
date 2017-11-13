import matplotlib.pyplot as plt
import numpy as np
import numpy.linalg as npl
norm2 = lambda u : u[0]**2 + u[1]**2

#constantes du problèmes
rho = 1
mu = 0.1
u_0 = (2,1.5)
a_0 = 1
m = 0.01
l_0 = 1

#precision 10^-j
j = 8
e = 10**(-j)
#maximum d'itération pour les fonctions 
max = 100

#fonctions du problèmes et lagrangien
J = lambda u : u[0]+u[1]
dJ = lambda u : np.array([1,1])
d2J = lambda u : np.zeros((2,2))
phi = lambda u : u[0]**2 + u[1]**2 -2
dphi = lambda u : 2*np.array(u)
d2phi = lambda u : 2*np.eye(2,2)

def Lpc(u,l):
    f = phi(u)
    return J(u) + l*f + (rho/2)*(f**2)

duLpc = lambda u,l : dJ(u) + (l+rho*phi(u))*dphi(u)

def S(u,l):
    A = dphi(u)
    B = np.dot(A.reshape(2,1),A.reshape(1,2))
    return d2J(u) + l*d2phi(u) + rho*B
    
def d(u,l):
    S1 = S(u,l) + mu*np.eye(2,2)
    y = duLpc(u,l)
    return -npl.solve(S1,y)

#fonction auxiliaire principale (une itération de boucle)
def next(U,L,k):
    u_k=U[k]
    l_k=L[k]
        
    d_k = d(u_k,l_k)
    a_k=a_0
        
    #recherche linéaire
    while Lpc(u_k+a_k*d_k,l_k)>Lpc(u_k,l_k)+m*a_k*norm2(d_k):
        a_k=a_k/2
            
    u_next=u_k+a_k*d_k
    l_next=l_k+rho*phi(u_next)
    
    U.append(u_next)
    L.append(l_next)
    return 0


def lpc_augmente(u_0,l_0):
    U = [u_0]
    L = [l_0]
    k=0
    next(U,L,k)
    k+=1
    while npl.norm(np.array(U[k])-np.array(U[k-1]))>e and k<max:
        next(U,L,k)
        k+=1
        
    print(k)
    #tracer le cercle
    X = np.arange(-1.5, 1.5, 0.01)
    Y = np.arange(-1.5, 1.5, 0.01)
    Z = np.meshgrid(X, Y)
    plt.contour(X, Y,phi(Z),0);    
        
    n=k
    #u^k sur les lignes de niveaux
    X_u = []
    Y_u = []
    for k in range(n):
        X_u.append((U[k])[0])
        Y_u.append((U[k])[1])
    
    plt.plot(X_u,Y_u,marker='o')
    plt.show()
    return U[k]
    
lpc_augmente(u_0,l_0)
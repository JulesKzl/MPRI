import math
import matplotlib.pyplot as plt
import numpy as np
import numpy.linalg as npl

p= 10
J = lambda u : (1-u[0])**2 + p*(u[1]-u[0]**2)**2
dJ = lambda u : np.array([2*(u[0]-1) + 4*p*u[0]*(u[0]**2-u[1]),2*p*(u[1]-u[0]**2)])
norm2 = lambda u : u[0]**2 + u[1]**2

## méthode de gradient simple 
#ligne de nieaux de J 

X = np.arange(-1.5, 1.5, 0.01)
Y = np.arange(-0.5, 1.5, 0.01)
X, Y = np.meshgrid(X, Y)
Z = J([X, Y])
plt.axis('equal')
plt.figure(1)
plt.contour(X, Y, Z,100);


#1ere methode de gradient u^k

rho = 0.01

#methode de très mauvaise complexité, mieux de stocker dans un tableau
def u(k):
    u = np.array([-1,1])
    if (k == 0):
        return u
    else :
        for n in range(k):
            v = dJ(u)
            u = u - rho* v/npl.norm(v)
        return u 
        

#meilleure méthode
n=0

u_0=(-1,1)

U=[u_0]

for k in range(n):
    v = dJ(U[k])
    u=U[k]-rho*(v)/npl.norm(v)
    U.append(u)
    
    
#u^k sur les lignes de niveaux
X_u = []
Y_u = []
for k in range(n):
    X_u.append((U[k])[0])
    Y_u.append((U[k])[1])

plt.plot(X_u,Y_u,marker='o')
plt.show()

#nombre d'évaluation 
U=[u_0]
k=0
while npl.norm(dJ(U[k]))/npl.norm(dJ(U[0])) > 10**(-1) and k<100000:
    u=U[k]-rho*(dJ(U[k]))/npl.norm(dJ(U[k]))
    U.append(u)
    k+=1
print(k)


## méthode de gradient à pas varibale 
n2 = 240
rho_0=10
U=[u_0]
k=0
m=0.01

while npl.norm(dJ(U[k]))/npl.norm(dJ(U[0])) > 10**(-4) and k<10000:
    
    u_k=U[k]
    v_k=dJ(U[k])
    rho_k=rho_0
    
    while J(u_k-rho_k*v_k)>J(u_k)-m*rho_k*norm2(v_k):
       rho_k=rho_k/2
        
    u_next=u_k-rho_k*v_k
    
    
    U.append(u_next)
    k+=1

print(k)

#u2^k sur les lignes de niveaux
X_u = []
Y_u = []
for k in range(n2):
    X_u.append((U[k])[0])
    Y_u.append((U[k])[1])

plt.plot(X_u,Y_u,marker='o')

## algorithme de Levenberg-Marquardt

u_0 = np.matrix([[1],[1],[1],[1],[3],[6]])
i = 4 #precision de la recherche linéaire
m = 8
X = [1,2,3,4,5,6,7,8]
Y = [0.127,0.2,0.3,0.25,0.32,0.5,0.7,0.9]

# on affiche les observations 
plt.figure(2)
plt.clf()
plt.scatter(X,Y)

f = lambda x,u : u[0,0]*np.exp(-(x-u[4,0])**2/(2*u[2,0]**2)) + u[1,0]*np.exp(-(x-u[5,0])**2/(2*u[3,0]**2))
df = lambda x,u : np.matrix([[np.exp(-(x-u[4,0])**2/(2*u[2,0]**2))],
    [np.exp(-(x-u[5,0])**2/(2*u[3,0]**2))],
    [u[0,0]*(x-u[4,0])**2/u[2,0]**3*np.exp(-(x-u[4,0])**2/(2*u[2,0]**2))],
    [u[1,0]*(x-u[5,0])**2/u[3,0]**3*np.exp(-(x-u[5,0])**2/(2*u[3,0]**2))],[u[0,0]*(x-u[4,0])/u[2,0]**2*np.exp(-(x-u[4,0])**2/(2*u[2,0]**2))],
    [u[1,0]*(x-u[5,0])/u[3,0]**2*np.exp(-(x-u[5,0])**2/(2*u[3,0]**2))]])
phi = lambda i,u : Y[i] - f(X [i],u)
dphi = lambda i,u : -df(X[i],u)
J = lambda u : (1/2)*np.sum((phi(i,u)**2 for i in range(m)))
dJ = lambda u : np.sum((dphi(i,u)*phi(i,u) for i in range(m)))
def S(u):
    A = np.sum((dphi(i,u)*(dphi(i,u).T) for i in range(m)))
    mu = 10**(-4)* max(npl.eigvals(A))
    return A+ mu*np.eye(6,6)

#1.initialisation
k = 0 
rho_0=10
m2=10**(-4)
U = [u_0]
#2. Intération k 
while npl.norm(dJ(U[k]))/npl.norm(dJ(U[0])) > 10**(-4) and k<100000: 
    u_k = U[k]
    #Calcul de S_k 
    S_k = S(u_k)
    #Calcul de d_k
    d_k = -npl.inv(S_k)*dJ(u_k)
    #3. Recherche linéaire
    rho_k = rho_0

    while J(u_k + rho_k*d_k)> J(u_k) + m2*rho_k*np.vdot(d_k,dJ(U[k])) :
       rho_k=rho_k/2
    
    #4. Mise à jour
    u_next=u_k + rho_k*d_k
    U.append(u_next)
    k+=1

print(k)
        


#on trace la fonction f avec u*
X_2 = np.linspace(0,10,200)
Y_2 = f(X_2,U[k])
plt.figure(2)
plt.plot(X_2,Y_2)
plt.xlim(0, 10)  
plt.ylim(0,1)



##Nelder-Mead
p=10

def nelder_mead(J,dJ,u_init,seuil,domaine):
    plt.figure(3)
    x , y =     np.meshgrid(np.linspace(domaine[0],domaine[1],201),np.linspace(domaine[2],domaine[3],201))
    z = J([x,y])
    
    graphe = plt.contour(x,y,z,100,linewidths=0.3)

    n=len(u_init[0])
    u=u_init
    norm_ref=npl.norm(dJ(u_init[0]))
    
    cpt=0
    #while npl.norm(dJ(u[-1]))/norm_ref > seuil and cpt<10000:
    while npl.norm(u[-1]-u[-2]) > seuil and cpt<10000:
        u=np.array(sorted(u,key=J))
        u_0=u[:-1].sum(axis=0)/n
    
        u_r=u_0+(u_0-u[-1])
        if J(u_r)<J(u[-2]):
            u_e=u_0+2*(u_0-u[-1])
            
            if J(u_e)<J(u_r):
                u[-1]=u_e
                
            else:
                u[-1]=u_r
            #retour debut
        elif J(u_r)>J(u[-2]):
            u_c=u[-1]+0.5*(u_0-u[-1])
            
            if J(u_c)<=J(u[-2]):
                u[-1]=u_c
                #retour début
            else:
                hom=lambda v : u[0]+0.5*(v-u[0])
                u[1:]=hom(u[1:])
        cpt+=1
        u_plot=np.concatenate((u,u[:1]))
        plt.plot(u_plot[:,0],u_plot[:,1])              
    return(u,cpt)

J=lambda u : (1-u[0])**2+p*(u[1]-u[0]**2)**2 
dJ=lambda u : np.array([2*(u[0]-1)+4*p*u[0]*(u[0]**2-u[1]) , 2*p*(u[1]-u[0]**2)])
u_init=np.array([np.array([-1,1.5]),np.array([-1,-0.5]),np.array([1,0.5])])
domaine = [-1.5,1.5,-0.5,1.5]
seuil = 10**(-4)
u,cpt = nelder_mead(J,dJ,u_init,seuil,domaine)
print(cpt)

plt.show()

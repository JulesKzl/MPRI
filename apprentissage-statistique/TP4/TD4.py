import numpy as np
import matplotlib.pyplot as plt
import numpy.linalg as lg

n = 50
p = 60

#precision 10^-j
j = 8

X = np.random.rand(n,p)
c = np.random.random(p)

Y = np.dot(X,c) + np.random.randn(n)


n2 = 1000
w_0 = np.random.random(p)

## méthode de gradient à pas constant
def gradient_pas_constant(l):
    """ definition des constantes"""
    J = lambda w : 1/(2*n)*(lg.norm(Y - np.dot(X,w)))**2 + (l/2)*(lg.norm(w))**2
    dJ = lambda w : (1/n)*np.dot(X.T,np.dot(X,w)-Y) + l*w

    """ trouver le w* """
    w_opt = np.dot(lg.inv(np.dot(X.T,X) + n*l*np.eye(p,p)),np.dot(X.T,Y))
    J_opt = J(w_opt)

    W=[w_0]
    U=[lg.norm(w_0-w_opt)]
    V=[J(w_0)-J_opt]
    k=0
    #on considère l = 1/L où L = (l + Tr(X.T*X)/n)*I
    L1 = l + np.trace(np.dot(X.T,X))/n
    #on considère L = max(valeur propre de X.T*X)
    H = (1/n)*np.dot(X.T,X) + l*np.eye(p,p)
    L2= np.linalg.eig(H)[0][0]

    while lg.norm(dJ(W[k])) > 10**(-j) and k<n2:

        w_k=W[k]
        #print("w(k)-w* =",U[k])
        v_k=dJ(W[k])
        w_next=w_k-(1/L1)*v_k
        W.append(w_next)
        U.append(lg.norm(w_next-w_opt))
        V.append(J(w_next)-J_opt)
        k+=1

    print("k=",k)
    print("w(k)-w* =",lg.norm(W[k]-w_opt))

    plt.plot(range(k+1),np.log(V))

#execution de l'algorithme
#gradient_pas_constant(1/n)

## méthode de gradient à pas varibale
def gradient_pas_variable(l):
    """ definition des constantes"""
    J = lambda w : 1/(2*n)*(lg.norm(Y - np.dot(X,w)))**2 + (l/2)*(lg.norm(w))**2
    dJ = lambda w : (1/n)*np.dot(X.T,np.dot(X,w)-Y) + l*w

    """ trouver le w* """
    w_opt = np.dot(lg.inv(np.dot(X.T,X) + n*l*np.eye(p,p)),np.dot(X.T,Y))
    J_opt = J(w_opt)

    rho_0=10
    W=[w_0]
    U=[lg.norm(w_0-w_opt)]
    V=[J(w_0)-J_opt]
    k=0
    m=0.01

    while lg.norm(dJ(W[k])) > 10**(-j) and k<n2:

        w_k=W[k]
        v_k=dJ(W[k])
        rho_k=rho_0

        while J(w_k-rho_k*v_k)>J(w_k)-m*rho_k*lg.norm(v_k)**2:
            rho_k=rho_k/2

        w_next=w_k-rho_k*v_k
        W.append(w_next)
        U.append(lg.norm(w_next-w_opt))
        V.append(J(w_next)-J_opt)
        k+=1

    print("k=",k)
    print("w(k)-w* =",lg.norm(W[k]-w_opt))

    plt.plot(range(k+1),np.log(V))

#execution de l'algorithme
#gradient_pas_variable(1/n)

t = 10
h = (1/n)/t
a = h

for i in range(t):
    #gradient_pas_variable(a)
    a = a+h
#gradient_pas_variable(a+10*h)
plt.show()

##Algorithme de Newton
n = 20
p = 20
n2 = 10

j=2

b = np.random.random(n)
a = np.random.rand(n,p)
#on prends x_0 = 0, car b \in [0,1]
#x_0 = np.zeros(p)

x_0 = np.random.random(p)

J = lambda x : -np.sum((np.log(b[i] - np.dot(a[i].T,x))) for i in range(n))
dJ = lambda x : np.array([(np.sum((a[i][j]/(b[i] - np.dot(a[i].T,x))) for i in range(n))) for j in range(p)])
H = lambda x : np.array([[(np.sum((a[i][j]*a[i][k]/(b[i] - np.dot(a[i].T,x))**2) for i in range(n))) for j in range(p)] for k in range(p)])


def centre_analytique(n2):
    X=[x_0]
    k=0
    m=0.01
    rho_0=10
    while lg.norm(dJ(X[k])) > 10**(-j) and k<n2:
        x_k=X[k]
        v_k=np.dot(lg.inv(H(X[k])),dJ(X[k]))
        rho_k=rho_0

        while J(x_k-rho_k*v_k)>J(x_k)-m*rho_k*lg.norm(v_k)**2:
            rho_k=rho_k/2

        x_next=x_k-rho_k*v_k
        X.append(x_next)
        k+=1

    print("k=",k)
    print("J(X[k])=",J(X[k]))
    print("||dJ(X[k])||=",lg.norm(dJ(X[k])))

    Y = []
    J_opt = J(X[k])
    for i in range(10):
        Y.append(J(X[i])-J_opt)

    plt.plot(range(10),Y)
    plt.show()

centre_analytique(n2)

    #print("w(k)-w* =",lg.norm(W[k]-w_opt))

    #plt.plot(range(k+1),np.log(V))

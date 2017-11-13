import matplotlib.pyplot as plt
import numpy as np
import numpy.linalg as npl
norm2 = lambda u : u[0]**2 + u[1]**2


import matplotlib.pyplot as plt
import numpy as np
import numpy.linalg as npl
norm2 = lambda u : u[0]**2 + u[1]**2


#precision 10^-j
j = 6
e = 10**(-j)
#maximum d'itération pour les fonctions 
max = 10000

### Algorithme d'Uzawa
def f(y,a): 
    return a*np.ones(len(y))
    
Khi = lambda x : 1 - 2*(2*x-1)**2


def tridiag(a, b, c, n):
    a_n = a*np.ones((1,n-1))
    b_n = b*np.ones((1,n))
    c_n = c*np.ones((1,n-1))
    return np.diag(a_n[0], -1) + np.diag(b_n[0], 0) + np.diag(c_n[0], 1)


def uzawa(a):
    #discretisation de [0,1]
    n = 200
    h = 1/(n+1)
    x = np.arange(0, 1+h/2, h) 
    x_n = x[1:n+1]

    #definition de X
    X=Khi(x)
    X_n = Khi(x_n)
    phi = lambda v : (X_n - v)
    #plot de la courbe de surface
    plt.plot(x,X)
    
    #variable du problèmes
    M = h*tridiag(1/4,1/2,1/4,n)
    F = np.dot(M,f(x_n,a))
    #pas de gradient convenable
    A = (n+1)*tridiag(-1,2,-1,n)
    rho = min(npl.eigvals(A))
    #Algorithme (boucle principale)
    l_k = np.zeros(n)
    u_k = npl.solve(A,F+l_k)
    nu_0 = npl.norm(u_k)
    u_l = u_k + 1
    i=0
    while i<max and npl.norm(u_l-u_k) >= e*(1+nu_0):
        l_temp = l_k + rho*phi(u_k)
        l_k = (l_temp+abs(l_temp))/2
        u_k = u_l
        u_l = npl.solve(A,F+l_k)
        i+=1
    print(i) 
    
    plt.plot(x_n,u_l)
    plt.show()   
    
uzawa(0)
uzawa(-100)
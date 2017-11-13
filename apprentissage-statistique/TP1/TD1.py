import numpy as np
import matplotlib.pyplot as pl

pl.clf()
n = 40
K = 1

## transposer de vecteurs ## 
def tp(v):
    return np.transpose(v)[np.newaxis][0]

######## main ########

X = np.random.random(n)
Y = np.exp(3*X) + np.random.randn(n)

# (X,Y)[0:20] : ensemble d'entraînement
X_train = X[0:(n/2)]
Y_train = Y[0:(n/2)]

# (X,Y)[20:40] : ensemble de test
X_test = X[(n/2):]
Y_test = Y[(n/2):]

## affichages des données tirées aléatoirement ##
pl.figure(1)
pl.scatter(X,Y)

## affichages de exp(3*x)
X_plot = np.linspace(0,1,100)
Y_exp = np.exp(3*X_plot)
pl.figure(1)
pl.plot(X_plot,Y_exp)

## régression linéaire ##
R = []
R2 = []

for k in range(1,K+1) :
    T = [np.ones((n/2))]
    T2 = [np.ones((n/2))]
    for i in range(0,k):
        T.append(T[-1] * X_train)
        T2.append(T2[-1] * X_test)
                    
    X_augmente = np.column_stack(T)
    X2_augmente = np.column_stack(T2)
    
    Xtp = tp(X_augmente)
    w = np.dot(np.linalg.pinv(np.dot(Xtp, X_augmente)), np.dot(Xtp, Y_train))
    
    
    ## affichage résultat régression linéaire ##
    Y_reg = np.polyval(w[::-1], X_plot)
    pl.figure(1)
    pl.plot(X_plot,Y_reg)
    
    ## erreur de régression sur les données d'entrainement
    Mod = Y_train - np.dot(X_augmente,w)
    Mod2 = Y_test - np.dot(X2_augmente,w)
    R.append( (1./(2*n/2))*np.dot(np.transpose(Mod),Mod))
    R2.append( (1./(2*n/2))*np.dot(np.transpose(Mod2),Mod2))


X_R = np.linspace(1,K,K)
pl.figure(2)
pl.plot(X_R,R)
pl.plot(X_R,R2)


pl.show()



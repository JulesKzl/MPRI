import numpy as np
import matplotlib.pyplot as plt
import matplotlib.image as mpimg
import scipy.spatial as ss
import scipy.io as sio 

data = sio.loadmat('/Users/juleskozolinsky/Documents/ENS-Cachan/M1/apprentissage-statistique/TP2/mnist_digits.mat')
X = data['x']
Y = data['y']

##Selection de D images au hasard
D = 6001 
X_D = []
Y_D = []
it = np.random.choice(range(0,len(X)),D,False)
for i in it : 
    X_D.append(X[i])
    Y_D.append(Y[i])
    
# print(np.histogram(Y_D))

##Séparer les images en données d'entrainements et de test
x = 1./3.
X_train = []
Y_train = []
X_test = []
Y_test = []

for i in range(int(x*D)):
    X_train.append(X_D[i])
    Y_train.append(Y_D[i])
for i in range(int(D - x*D)):
    X_test.append(X_D[i+int(x*D)])
    Y_test.append(Y_D[i+int(x*D)])
#(juste à 1 près, si D impair)

##Afficher quelques images
a =  np.reshape(X_test[1],(28,28))
plt.imshow(a)
plt.show()

##Matrice de confusion
def k_ppv(k,X_train,X_test,Y_train,Y_test):
    M = np.zeros((10,10))
    #boucle principale : on considère chaque donnée de test
    for i in range(0,len(X_test)):
        if (i%100 == 0):
            print(i)
        #tableau des k plus proche voisins où 1000>28*28 dénote l'infini
        ppv = 1000*np.ones((k))
        ppv_j = -np.ones((k)) #tableau où sont stockés les indices
        #boucle secondaire : on calcule la distance de la donnée considérée  
        #avec toutes les données d'entraintements
        for j in range(0,len(X_train)):
            dist = ss.distance.cdist([X_train[j]],[X_test[i]],'sqeuclidean')
            #le tableau est trié dans l'ordre croissant
            if (ppv[k-1] > dist):
                #on doit insérer le ppv au bon endroit 
                ppv[k-1] = dist
                ppv_j[k-1] = Y_train[j] 
                c = k-1
                while (ppv[c] < ppv[c-1] and c > 0):
                    ppv[c],ppv[c-1] = ppv[c-1],ppv[c]
                    ppv_j[c],ppv_j[c-1] = ppv_j[c-1],ppv_j[c]
                    c -= 1
        #On dispose désormais des k plus proches voisins
        hist = np.histogram(ppv_j,range=(0,9))[0]
        y = np.argmax(hist) #y est la classe prédite de i par le classifieur
        y2 = int((Y_test[i])[0]) #y2 est la vraie classe de i 
        M[y2,y] += 1
        
    return M

#erreur de classification 
def erreur_classification(M):
    return np.trace(M)/int(D - x*D)
    
##erreur de classification en fonction de k
def erreur_k(k,X_train,X_test,Y_train,Y_test):
    tab = []
    for i in range(1,k+1):
        print("k=")
        print(i)
        e = erreur_classification(k_ppv(i,X_train,X_test,Y_train,Y_test))
        tab.append(e)
        print(e)
    return tab

# tab = erreur_k(20,X_train,X_test)

#ensemble de validation 
z = 1./10.
indices = np.random.permutation(D)
id_v = int(z*x*D)
validation_idx, train_red_idx = indices[:id_v], indices[id_v:]
X_validation, X_train_red = (np.array(X_D))[validation_idx], (np.array(X_D))[train_red_idx]
Y_validation, Y_train_red = (np.array(Y_D))[validation_idx], (np.array(Y_D))[train_red_idx]

##validation simple 
def recherche_k(k,X_train_red,X_validation,Y_train_red,Y_validation):
    E = []
    for i in range(1,k):
        M = k_ppv(i,X_train_red,X_validation,Y_train_red,Y_validation)
        e = erreur_classification(M)
        E.append(e)
    print(E)
    return np.argmax(E)

# recherche_k(5,X_train_red,X_validation,Y_train_red,Y_validation)

##validation croisée
def K_fold(k,X_train,Y_train,K):
    max_E = 0 #meilleur taux de réussite
    best_k = -1 #meilleur k
    indices = np.random.permutation(int(x*D))
    id_v = int(x*D/K)
    #boucle où on prends un intervalle différent à chaque fois
    for i in range(0,K):
        validation_idx = indices[i*id_v:(i+1)*id_v]
        train_red_idx = np.concatenate((indices[:i*id_v],indices[(i+1)*id_v:]))
        X_validation = (np.array(X_D))[validation_idx]
        X_train_red = (np.array(X_D))[train_red_idx]
        Y_validation = (np.array(Y_D))[validation_idx]
        Y_train_red =  (np.array(Y_D))[train_red_idx]
        #on va maintenant effectuer une validation simple avec l'intervalle 
        #considéré
        E = []
        for j in range(1,k):
            M = k_ppv(j,X_train_red,X_validation,Y_train_red,Y_validation)
            e = erreur_classification(M)
            E.append(e)
        k_E = np.argmax(E)
        #on compare le taux de réussite au meilleur actuellement trouvé
        if E[k_E] > max_E:
            best_k = k_E
            max_E = E[k_E]
    return best_k

#print(K_fold(2,X_train,Y_train,8))


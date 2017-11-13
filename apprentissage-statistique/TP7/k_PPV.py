import numpy as np
import matplotlib.pyplot as plt
import scipy.spatial as ss



##Matrice de confusion
def k_ppv(k,X_train,X_test,Y_train,Y_test):
    p = np.shape(X_train)[1]
    M = np.zeros((p,p))
    n=len(X_test)
    #boucle principale : on considère chaque donnée de test
    for i in range(0,n):
        if (i%100 == 0):
            print(i/n*100,"%")
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
        
    #calcul de l'erreur de classification 
    n = np.shape(X_test)[0]
    e = np.trace(M)/n
    return e

##validation croisée
def K_fold(k_max,X_train,Y_train,K):
    n = np.shape(X_train)[0]
    max_E = 0 #meilleur taux de réussite
    best_k = -1 #meilleur k
    indices = np.random.permutation(n)
    id_v = int(n/K)
    #boucle où on prends un intervalle différent à chaque fois
    for i in range(0,K):
        print(i+1,"-ième interval considéré")
        print("max_E",max_E)
        print("best_k",best_k)
        validation_idx = indices[i*id_v:(i+1)*id_v]
        train_red_idx = np.concatenate((indices[:i*id_v],indices[(i+1)*id_v:]))
        X_validation = (np.array(X_train))[validation_idx]
        X_train_red = (np.array(X_train))[train_red_idx]
        Y_validation = (np.array(Y_train))[validation_idx]
        Y_train_red =  (np.array(Y_train))[train_red_idx]
        #on va maintenant effectuer une validation simple avec l'intervalle 
        #considéré
        E = []
        for j in range(1,k_max):
            print("k_ppv avec k =",j)
            e = k_ppv(j,X_train_red,X_validation,Y_train_red,Y_validation)
            E.append(e)
        k_E = np.argmax(E)
        # print("E =",E)
        # print("k_E",k_E)
        #on compare le taux de réussite au meilleur actuellement trouvé
        if E[k_E] > max_E:
            # print("New max founded !")
            best_k = k_E+1
            max_E = E[k_E]
    return best_k

##
def PPV(X_train,X_test,Y_train,Y_test,k=0):
    if (k == 0):
        best_k = K_fold(4,X_train,Y_train,3)
        print("best_k :",best_k)
    else :
        best_k = k
        print("on a choisi k =",best_k)
    e_train = k_ppv(best_k,X_train,X_train,Y_train,Y_train)
    e_test = k_ppv(best_k,X_train,X_test,Y_train,Y_test)
    print("Erreur d'entrainement : ",(1-e_train)*100,"%")
    print("Erreur de test : ",(1-e_test)*100,"%")
    

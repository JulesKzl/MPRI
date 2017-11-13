""" Module principal du TD7 """

#### DECOMMENTER POUR LANCER LE CODE (tout fonctionne)####

from import_data import *

from linear_reg import *
from logistic_reg import *
from LDA import *
from QDA import *
from k_PPV import *

## Regression linéaire
# lin_reg_classification(XA_train,YA_train,XA_test,YA_test,1)
# lin_reg_classification(XB_train,YB_train,XB_test,YB_test,1)
# lin_reg_classification(XC_train,YC_train,XC_test,YC_test,1)
#
# ## Regression logistique
# logistic_reg(XA_train,YA_train,XA_test,YA_test,1)
# logistic_reg(XB_train,YB_train,XB_test,YB_test,1)
# logistic_reg(XC_train,YC_train,XC_test,YC_test,1)

##LDA
# LDA(XA_train,YA_train,XA_test,YA_test,1)
# LDA(XB_train,YB_train,XB_test,YB_test,1)
# LDA(XC_train,YC_train,XC_test,YC_test,1)

##QDA
# QDA(XA_train,YA_train,XA_test,YA_test,1)
# QDA(XB_train,YB_train,XB_test,YB_test,1)
# QDA(XC_train,YC_train,XC_test,YC_test,1)

##k_PPV
# PPV(XA_train,XA_test,YA_train,YA_test)
# PPV(XB_train,XB_test,YB_train,YB_test)
# PPV(XC_train,XC_test,YC_train,YC_test)



### K classes
## PENSER A PLACER mnist_digits.mat dans le repertoire "data"
from import_MNIST import *
from QDA_K import *


##QDA
u = QDA_K(X_train,Y_train,X_test,Y_test)

##k_PPV
# PPV(X_train,X_test,Y_train,Y_test)

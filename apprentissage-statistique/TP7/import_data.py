""" Module pour importer toutes les données"""
import numpy as np

ZA_train = np.loadtxt('data/A_train.txt')
XA_train = []
YA_train = []
for x in ZA_train:
    XA_train.append(x[0:2])

    YA_train.append(x[2:3])

ZA_test = np.loadtxt('data/A_test.txt')
XA_test = []
YA_test = []
for x in ZA_test:
    XA_test.append(x[0:2])
    YA_test.append(x[2:3])

ZB_train = np.loadtxt('data/B_train.txt')
XB_train = []
YB_train = []
for x in ZB_train:
    XB_train.append(x[0:2])
    YB_train.append(x[2:3])

ZB_test = np.loadtxt('data/B_test.txt')
XB_test = []
YB_test = []
for x in ZB_test:
    XB_test.append(x[0:2])
    YB_test.append(x[2:3])

ZC_train = np.loadtxt('data/C_train.txt')
XC_train = []
YC_train = []
for x in ZC_train:
    XC_train.append(x[0:2])
    YC_train.append(x[2:3])

ZC_test = np.loadtxt('data/C_test.txt')
XC_test = []
YC_test = []
for x in ZC_test:
    XC_test.append(x[0:2])
    YC_test.append(x[2:3])

#Implementation of Richardson Extrapolation in the textbook (Chapter 7, Page 476):
import math
import numpy as np

fx = lambda x:np.log(x) # this function can be differentiated 
M=2
def richardsonExtrapolation(f,x,step,h):
    D = np.zeros((step+1,step+1))
    teta = lambda xx,hh: 0.5 * (f(xx+hh)-f(xx-hh))/ hh
    for i in range(0,step+1):
        D[i,0]=teta(x,h)
        h = 0.5 * h
    for k in range(1,step+1):
        for nn in range(k,step+1):
            D[nn,k] = D[nn,k-1] + ((D[nn,k-1]-D[nn-1,k-1])/((4**k)- 1))
    return D

d_array=richardsonExtrapolation(fx, 3, M, 1) 
print('For',M,'steps of Richardson Extrapolation algorithm,\n The most accurate value of ln(x) is estimated as' ,d_array[M,M])
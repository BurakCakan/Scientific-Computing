import numpy as np

v1=[3,2,4]
v2=[5,1,6]

def InnerProduct(x,y):
    n = np.shape(y)[0]
    inner=[]
    for i in range(n):
        temp=x[i]*y[i]
        inner.append(temp)
    return inner

d=InnerProduct(v1,v2)
print(d)
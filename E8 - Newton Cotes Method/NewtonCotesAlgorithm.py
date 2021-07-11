#newton-cotes integration with undetermined coefficients method:
import math
import numpy as np
import pprint
from scipy import integrate
#By applying undetermined coefficients method, Because the nodes are constant, I calculated the equation and A and b
# vectors on hand. Then, I solved this linear system of equations below:
A=np.array([[1,1,1,1,1,1],
            [0,1/5,2/5,3/5,4/5,1],
            [0,1/25,4/25,9/25,16/25,1],
            [0,1/125,8/125,27/125,64/125,1],
            [0,1/(5**4),16/(5**4),81/(5**4),128/(5**4),1],
            [0,1/(5**5),32/(5**5),243/(5**5),1024/(5**5),1]])
b=np.array([1,1/2,1/3,1/4,1/5,1/6])
z=np.linalg.solve(A,b) #this is the set of A coefficients (from A0 to A5) calculated instead of using integral of langrange

#I tried with this function: math.exp(x**2)*math.sin(math.exp(x**2))
fnc=input("give a function with x as undefined in the function:\n:")
f = lambda x: eval(fnc)
dict_sample = {0: f(0), 1: f(1/5), 2: f(2/5), 3: f(3/5), 4: f(4/5), 5: f(1)}
key = list(dict_sample.keys())

result=0
for i in key:
    result += dict_sample[i]*z[i]
print("\nResult of the integration in Newton-Cotes: ",result)
intt=integrate.quad(f,0,1)
print("\nResult of the integration in scipy.quad: ",intt)
error=abs(intt[0]-result)
print("\nError in integrtion with Newton-Cotes comparing with scipy.quad: ",error)

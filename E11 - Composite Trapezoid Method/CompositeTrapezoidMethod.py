# composite trepozoid:
import math
import numpy as np

a=float(input("give the lower bound\n"))
b=float(input("give the upper bound\n"))
n=int(input("give the number of intervals\n"))

fnc=input("give a function with x as undefined in the function:\n:")
f = lambda x: eval(fnc)
h=(b-a)/n

summation=(f(a)/2)+(f(b)/2)
for i in range(1,n):
    summation=summation+f(a+i*h)

result=summation*h

print("result of the integration is: ",result)
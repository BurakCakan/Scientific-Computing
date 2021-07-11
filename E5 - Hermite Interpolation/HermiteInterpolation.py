import numpy as np
import math
import sympy as sym
import pprint 

c00=75
c10=-59
c11=-28
c20=-39
c21=76
c22=94

f1=[c00]
f2=[c10,c11]
f3=[c20,c21,c22]

x=[2,1,1,3,3,3]
y=[c00,c10,c10,c20,c20,c20]

def getHermite(x,y):
    a=0
    b=0
    f1=[c00]
    f2=[c10,c11]
    f3=[c20,c21,c22]
    pyramid=np.zeros([6,6])
    pyramid[::,0] = y
    column_3=[]
    column_2=[]
    for j in range(1,6):
        for i in range(6-j):
            if x[i+j]==x[i]:
                if x[i]==1:
                    if len(column_2)==0:
                        column_2.append(j)
                        a=a+1
                        pyramid[i][j]=f2[a]/math.factorial(a)
                    elif any(x == j for x in column_2):
                        pyramid[i][j]=f2[a]/math.factorial(a)
                    else:
                        a=a+1
                        pyramid[i][j]=f2[a]/math.factorial(a)
                elif x[i]==3:
                    if len(column_3)==0:
                        column_3.append(j)
                        b=b+1
                        pyramid[i][j]=f3[b]/math.factorial(b)
                    elif any(x == j for x in column_3):
                        pyramid[i][j]=f3[b]/math.factorial(b)
                    else:
                        b=b+1
                        pyramid[i][j]=f3[b]/math.factorial(b)
            else:
                pyramid[i][j]=(pyramid[i+1][j-1] - pyramid[i][j-1])/(x[i+j]-x[i])
    return pyramid

coeff_vector=getHermite(x,y)

print("\nFull pyramid for the solution is:")
pprint.pp(coeff_vector)

print("\nCoefficients are: ",coeff_vector[0])

temp_x=x
x = sym.Symbol('x')

print("\nPolynomial Function is: ")
print((coeff_vector[0][0])
      +((x-temp_x[0])*coeff_vector[0][1])
      +(((x-temp_x[0])*(x-temp_x[1]))*coeff_vector[0][2])
      +(((x-temp_x[0])*(x-temp_x[1])*(x-temp_x[2]))*coeff_vector[0][3])
      +((x-temp_x[0])*(x-temp_x[1])*(x-temp_x[2])*(x-temp_x[3]))*coeff_vector[0][4]
      +((x-temp_x[0])*(x-temp_x[1])*(x-temp_x[2])*(x-temp_x[3])*(x-temp_x[4]))*coeff_vector[0][5])
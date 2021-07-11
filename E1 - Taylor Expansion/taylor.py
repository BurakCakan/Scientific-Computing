#Burak Cakan
from scipy.misc import derivative 
import math 
import sympy as sym
#b=sp.Symbol('x')
def f(x):
	return math.cos(x)

def f1(x):
	return math.sin(x)*(-1)
def f2(x):
	return math.cos(x)*(-1)
def f3(x):
	return math.sin(x)
def f4(x):
	return math.cos(x)

degree=int(input("Give the degree between 0-90 degrees: ")) #for 1 radian I gave 57 degrees to validate as hard copy
error_val=float(input("Give the precision error: "))  
radian_val=degree*(math.pi/180)

first_val=math.cos(0)
taylor_expansion=first_val

for i in range(1,20):

	if (i%4 == 1):
		turev = f1(0)
	elif (i%4 == 2):
		turev = f2(0)
	elif (i%4 == 3):
		turev = f3(0)
	else:
		turev = f4(0)
	#turev=derivative(func=f,x0=0,dx=1e-6,n=i,order=2*i+1)
	taylor=(turev*(radian_val**i))/math.factorial(i)
	taylor_expansion=taylor_expansion+taylor
	

	real_error=1/(math.factorial(i+1))

	if(real_error<error_val):
		break

#print(i)
print(taylor_expansion)



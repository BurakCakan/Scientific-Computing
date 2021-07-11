import numpy as np
import pprint

def InnerProduct(a,b): #A function to make standart inner product operation with two arrays
    inner_sum = 0
    for x in range(len(a)):
        product = a[x]*b[x]
        inner_sum += product
    return inner_sum

def projection(s,t): #A function to calculate projection values in Gram-Schmidt algorithm steps
    return np.multiply((InnerProduct(s, t)/InnerProduct(t, t)), t)

def GramSchmidt(v): # This is the main function to calculate orthogonal basis 
    u = {}
    u[1] = v[1]
    for n in range(len(v)-1):
        val = v[n+2]
        for x in range(n+1):
            val = np.subtract(val, projection(v[n+2], u[x+1]))
        u[n+2] = val
    return u

def orthogonality_check(u_vector): #A function in order to validate results given in GramSchmidt
    for i in range(len(u_vector)):
        for j in range(len(u_vector)):
            if i != j:
                print('\n Inner product of basis', i + 1, 'and basis', j + 1, ':')
                print(InnerProduct(u_vector[i + 1], u_vector[j + 1]))

#This part will take 9 initial basises from the user and print it: 
pp = pprint.PrettyPrinter(depth=6)
print('You will give 9 arrays as basis consisting of 9 numbers each\n')
basis_dict={}
for i in range(9):
    arry=[]
    for j in range(9):
        print("Enter",j+1,"st number in the",i+1,"th array:")
        val = input()
        arry.append(int(val))
    basis_dict[i+1]=arry

print('\nInitial Basis:\n')
pp.pprint(basis_dict)

#This part is where the all functions are used and calculations are made:
print('\nOrthogonal Basis:\n')
pp.pprint(GramSchmidt(basis_dict))


#Inner product of basises with each other should equal to zero for orthogonality.
#If the user wants to validate results, just uncomment 53rd and 54th lines:
#a = GramSchmidt(basis_dict)
#orthogonality_check(a)

# Inner product values are not zero but they are so close to zero. The reason why they are not zero is the rounding in operations.
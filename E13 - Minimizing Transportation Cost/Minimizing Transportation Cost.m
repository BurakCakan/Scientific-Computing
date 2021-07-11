%Burak ÇAKAN 2263960
x=input('Enter initial X coordinate:\n');
y=input('Enter initial Y coordinate:\n');
n=input('Enter the number of iteration:\n');
 
W=[8 4 10 7 6 5 1 7];
C=[0.02 0.05 0.02 0.03 0.03 0.03 0.05 0.03];
X=[32 27 28 37 41 36 30 41];
Y=[39 38 41 37 39 41 36 37];
for i=1:n
d=abs(X-x)+abs(Y-y);
x=sum(W.*C.*X./d)/sum(W.*C./d);
y=sum(W.*C.*Y./d)/sum(W.*C./d);
d=abs(X-x)+abs(Y-y);
TC=sum(W.*C.*d);
fprintf('Iteration-%d: X coordinate:%f Y coordinate:%f, TC=%f\n',i,x,y,TC);
end
fprintf('The resulting location is found as (%f,%f) after %d iterations  with total cost of %f\n',x,y,n,TC);


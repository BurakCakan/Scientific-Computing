%Burak ÇAKAN 2263960

x1=2;
x2=10;
i=0.0001; %i is sopping criteria

x3=CalcTerm_ID2263960(x2,x1);

n=0; %number of iteration
while(abs(x1-x2)>i)

  x3=CalcTerm_ID2263960(x2,x1);

fprintf('root=%f\n',x3);
n=n+1;

x1=x2;
x2=x3;

end
fprintf('Number of iterations=%d\n',n);


%If we type a smaller stopping criteria number of iterations ascends. For
%stopping criteria=0.0001 ; x1=10 and x2=2 number of iteration=17.However,  For
%stopping criteria=0.0000001 ; x1=10 and x2=2 number of iteration=18.

%If my x1 and x2 values approaches to each other, number of iterations
%ascends.  For the constant stopping criteria=0.0001 ; x1=20 and x2=21 number of iteration=9.However,  For x1=10 and x2=50 number of iteration=8.
%Burak ÇAKAN 2263960
m=input('Which cell do you need to visit:\n');
x=m(1,1);
y=m(1,2);

c=0;             %For 21x21 grid
n=21;
for i=1:100
    c=c+Randomwalk2D_ID2263960(x,y,n);
end
c/100;
fprintf('For N=%d : The cell (3,5) is visited in %.f steps on average.\n',n,c/100);

n=201;              %For 201x201 grid
c=0;
for i=1:100
    c=c+Randomwalk2D_ID2263960(x,y,n);
end
c/100;
fprintf('For N=%d : The cell (3,5) is visited in %.f steps on average.\n',n,c/100);

n=2001;             %For 2001x2001 grid
c=0;
for i=1:100
    c=c+Randomwalk2D_ID2263960(x,y,n);
end
c/100;
fprintf('For N=%d : The cell (3,5) is visited in %.f steps on average.\n',n,c/100);
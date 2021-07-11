%Burak ÇAKAN 2263960
clear;close all;clc
load HW5w1;

x=data(:,1);
y=data(:,2);

x1=max(data(:,1))*rand;
y1=max(data(:,2))*rand;

x2=max(data(:,1))*rand;
y2=max(data(:,2))*rand;

d1=0;
d2=0;
n=0;
m=0;

for as=1:100
    for i=1:100
        d(i,1)=(x1-x(i))^2+(y1-y(i))^2;
        d(i,2)=(x2-x(i))^2+(y2-y(i))^2;
        
        
        f(i,1)=1-(d(i,1)/(d(i,1)+d(i,2)));
        f(i,2)=1-(d(i,2)/(d(i,1)+d(i,2)));
    end
    
    
    x1=sum(f(:,1).*x)./sum(f(:,1));
    y1=sum(f(:,1).*y)./sum(f(:,1));
    x2=sum(f(:,2).*x)./sum(f(:,2));
    y2=sum(f(:,2).*y)./sum(f(:,2));
end
fprintf('Final Locations of the Base Station\n');
fprintf('Station 1\n');
fprintf('X coordinate:%f\n',x1);
fprintf('Y coordinate:%f\n',y1);
fprintf('Station 2\n');
fprintf('X coordinate:%f\n',x2);
fprintf('Y coordinate:%f\n',y2);


%contour plot

w=linspace(0,max(data(:,1)),200);
t=linspace(0,max(data(:,2)),200);

fVals=zeros(200,200);
for j=1:200
    for i=1:200
        d1=(x1-w(i))^2+(y1-t(j))^2;
        d2=(x2-w(i))^2+(y2-t(j))^2;
        
        
        fVal1(j,i)=1-(d1/(d1+d2));
        fVal2(j,i)=1-(d2/(d1+d2));
    end
end

contour(w,t,fVal1,100)
figure
contour(w,t,fVal2,100)


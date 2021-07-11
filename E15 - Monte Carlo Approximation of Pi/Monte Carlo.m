%Burak ÇAKAN 2263960
clear;close all;clc
axis equal off
axis equal 
hold on 

nr=0; %number of red
ng=0; %number of green

for i=1:100000

x = 2*rand-1;
y = 2*rand-1;


if ((x^2+y^2)^3)<=(2*((x^2)*(y^2))) 
    plot(x,y,'r.');
    nr=nr+1;
elseif ((x^2+y^2)^3)>=(2*((x^2)*(y^2))) && ((x^2+y^2)^3)<=(4*((x^2)*(y^2)))
      plot(x,y,'g.');
      ng=ng+1;
else
      plot(x,y,'b.');
end

end

fprintf('Number of red dots:%d\n Number of green dots:%d \n Area of red: %f \n Area of green: %f',nr,ng,(4*nr)/(i-1),(4*ng)/(i-1));

%For the different numbers randomly selected the area of a color is always lower than 1. 
%For two different trial:
%Number of red dots:1989
%  Number of green dots:1980 
%  Area of red: 0.795600 
%  Area of green: 0.792000
 
 
%  Number of red dots:1951
%  Number of green dots:2023 
%  Area of red: 0.780400 
%  Area of green: 0.809200

%For 100.000 iterations it took time to operate and results are here:
% Number of red dots:19830
%  Number of green dots:19585 
%  Area of red: 0.793208 
%  Area of green: 0.783408
%As a result, even though I try so many iterations, the area is
%approximately constant.

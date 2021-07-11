%Burak ÇAKAN 2263960
function [xNew,yNew] = Smooth_ID2263960(x,y,n)
for i=1:n
    if i<n
     xNew(i) = (x(i) + x(i+1))/2; 
     yNew(i) = (y(i) + y(i+1))/2; 
   else 
     xNew(n) = (x(n) + x(1))/2; 
     yNew(n) = (y(n) + y(1))/2; 
    end
end
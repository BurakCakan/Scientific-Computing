%Burak ÇAKAN 2263960
function x3=CalcTerm_ID2263960(x2,x1)

y2=((x2^4-5*x2^3+1)/(8*x2^2));
y1=((x1^4-5*x1^3+1)/(8*x1^2));

x3=x2-y2*((x2-x1)/(y2-y1));
end
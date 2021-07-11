function drawCircle(x,y,r,c)
% This function takes coordinates of the center of a circle, its radius 
% r, and its color as input, and draws the circle. You can use color keywords
% such as 'r', 'b', etc... You don't need to modify this function.
%c='r';
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
fill(xunit, yunit,c);
end
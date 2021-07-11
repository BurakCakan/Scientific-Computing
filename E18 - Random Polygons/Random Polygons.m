%Burak ÇAKAN 2263960
K=100;
x=rand(1,K);
y=rand(1,K);



[x,y]=Smooth_ID2263960(x,y,K);
plot([x x(1)],[y y(1)]);
for i=2:1000
    
    [x,y]=Smooth_ID2263960(x,y,K);
    if i==10
        figure;
        plot([x x(1)],[y y(1)],'o',[x x(1)],[y y(1)]);
    elseif i==100
        
        figure;
        plot([x x(1)],[y y(1)],'o',[x x(1)],[y y(1)]);
    elseif i==900
        
        figure;
        plot([x x(1)],[y y(1)],[x x(1)],[y y(1)],'.');
    end
    
end
figure;

xbar=sum(x)/K;  %centralize
ybar=sum(y)/K;
x=x-xbar;
y=y-ybar;

plot([x x(1)],[y y(1)],[x x(1)],[y y(1)],'.');

hold on

d=max(sqrt(x.^2+y.^2));  %normalize
x=x/d;
y=y/d;

plot([x x(1)],[y y(1)],[x x(1)],[y y(1)],'.');


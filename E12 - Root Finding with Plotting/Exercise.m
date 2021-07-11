%Burak ÇAKAN 2263960

%i)
x=linspace(-6,3);
y=2*sin(x)-exp(x)+1;
subplot(4,1,1);
plot(x,y);
title('Plot of 2sin(x)-e^x+1');




subplot(4,1,2);
plot(x,y);
axis([-2.7,-2.6,-0.02,0.02]);
title('Zoomed view for the first root');
%first root lies between [-2.7,-2.6]
subplot(4,1,3);
plot(x,y);
axis([-0.05,0.05,-0.02,0.02]);
title('Zoomed view for the second root');
 %second root lies between [-0.1,0]


subplot(4,1,4);
plot(x,y);
axis([0.9 1 -0.02 0.02]);
title('Zoomed view for the third root');
%third root lies between [0.95,1]]


%ii)

a=linspace(0,4);
b=(4.*a.*sin(a)-3)./(2+a.^2);
figure
subplot(3,1,1);
plot(a,b);
title('Plot of (4xsin(x)-3)/(2+x^2)');

subplot(3,1,2);
plot(a,b);
axis([0.9,1,-0.02,0.02]); %first root lies between [0.90,0.95]
title('Zoomed view for the first root');

subplot(3,1,3);
plot(a,b);
title('Zoomed view for the second root');
axis([2.8,2.9,-0.02,0.02]); %second root lies between [2.85,2.90]




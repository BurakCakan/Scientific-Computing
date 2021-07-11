%Burak ÇAKAN 2263960
clc;clear;close all
figure
axis equal off
hold on 
D(1)=struct('xc',1,'yc',0,'r',randi([5 30],1),'c',[1 0 0]);
D(2)= struct('xc',65,'yc',0,'r',randi([5 30],1),'c',[1 1 0]);
D(3)=struct('xc',165,'yc',0,'r',randi([5 30],1),'c',[0 1 0]);
D(4) = struct('xc',216,'yc',0,'r',randi([5 30],1),'c',[0 0 1]);

fprintf('Circle 1: x coordinate:%d y coordinate:%d radius:%d\n',D(1).xc,D(1).yc,D(1).r);
fprintf('Circle 2: x coordinate:%d y coordinate:%d radius:%d\n',D(2).xc,D(2).yc,D(2).r);
fprintf('Circle 3: x coordinate:%d y coordinate:%d radius:%d\n',D(3).xc,D(3).yc,D(3).r);
fprintf('Circle 4: x coordinate:%d y coordinate:%d radius:%d\n',D(4).xc,D(4).yc,D(4).r);

drawCircle(D(1).xc,D(1).yc,D(1).r,D(1).c);

drawCircle(D(2).xc,D(2).yc,D(2).r,D(2).c);

drawCircle(D(3).xc,D(3).yc,D(3).r,D(3).c);

drawCircle(D(4).xc,D(4).yc,D(4).r,D(4).c);
d=1;
CirNum=0;
while d==1

    for i=1:length(D)-1
if abs(D(i).xc-D(i+1).xc)<1
    d=0;
    break;
end
        
r=(D(i).r+D(i+1).r)/2;
xc=(D(i).xc+D(i+1).xc)/2; 
yc=(D(i).yc+D(i+1).yc)/2;
c=(D(i).c+D(i+1).c)/2;
P_New(2*i-1)=D(i);
P_New(2*i)=struct('xc',xc,'yc',yc,'r',r,'c',c); 
P_New(2*i+1)=D(i+1);
drawCircle(P_New(2*i).xc,P_New(2*i).yc,P_New(2*i).r,P_New(2*i).c);
   CirNum=CirNum+1;
    end
D=P_New;

end
title(['number of generated circles: ' num2str(CirNum)]);





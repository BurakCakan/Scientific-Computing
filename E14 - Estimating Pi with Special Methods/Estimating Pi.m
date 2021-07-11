%Burak ÇAKAN 2263960
for n=10:10:1000
    fprintf('For the value of %d \n',n);
    A=0;
    B=0;
    C=0;
    A1=0;
    B1=0;
    C1=0;
    for k=0:n
   A=A+((-3)^-k)/(2*k+1);
   A1=A1+round(((-3)^-k)/(2*k+1),5);
    end
       for l=1:n
   B=B+(1)/(l^2);
   B1=B1+round((1)/(l^2),5);
   C=C+((-1)^(l+1))/(2*l-1);
   C1=C1+round(((-1)^(l+1))/(2*l-1),5);
       end
p1=A*sqrt(12);
p2=sqrt(6*B);
p3=4*C;

%b þýkký
r1=A1*sqrt(12);
r2=sqrt(6*B1);
r3=4*C1;
ro1=abs(r1-p1);
ro2=abs(r2-p2);
ro3=abs(r3-p3);
a(n/10)=ro1;
b(n/10)=ro2;
c(n/10)=ro3;

d(n/10)=((abs(r1-pi))/pi);
e(n/10)=((abs(r2-pi))/pi);
f(n/10)=((abs(r3-pi))/pi);
%b þýkký

fprintf('p1=%f \n',p1);
fprintf('p2=%f \n',p2);
fprintf('p3=%f \n',p3);
diff1=pi-p1;
diff2=pi-p2;
diff3=pi-p3;
fprintf('diff1=%f \n',abs(diff1));
fprintf('diff2=%f \n',abs(diff2));
fprintf('diff3=%f \n',abs(diff3));

x(n/10)=diff1;
y(n/10)=diff2;
z(n/10)=diff3;
values(n/10)=n;
end

plot(values(),x(),'r');
hold on
plot(values(),y(),'y');
hold on
plot(values(),z(),'blue');
hold off
xlabel('Values');

ylabel('Differences');
title('Estimate of pi');
legend('diff1','diff2','diff3');
figure


%Relative Error:
plot(values(),d(),'r');
hold on
plot(values(),e(),'y');
hold on
plot(values(),f(),'blue');
hold off
xlabel('values');
ylabel('relative error');
title('Graph of Relative Error');
legend('RE1','RE2','RE3');


%I observed absolute errors.
%plot(values(),a(),'r');
%hold on
%plot(values(),b(),'y');
%hold on 
%plot(values(),c());
%hold off
%xlabel('values');
%ylabel('absolute error');
%title('Graph of Absolute Error');
%legend('ABE1','ABE2','ABE3');


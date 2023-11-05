clear all
clc

x = linspace(-1,1,21);
fx = 1./(6 * x.^2+1);
figure;plot(fx)
legend('f(x)')
n = 20;
p = polyfit(x,fx,n);
x = linspace(-1,1,41);
fx = 1./(6 * x.^2+1);
px = polyval(p,x);
qx = fx - px
[fx' px']
figure;plot(x,fx)
hold on
plot(x,px)
legend('f(x)','p(x)')
ylim([-1 4])
fileID = fopen('val.txt','w');
fprintf(fileID,'%2.16f || %2.16f || %2.16f\n',fx,px,qx);
fclose(fileID);

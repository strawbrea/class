clc

format long 

g1 = @(x) ((1/2) * (x+(2./x)));
g2 = @(x)cos(x);
g3 = @(x)1+exp(-x);
g4 = @(x) x;
x=0.5:.1:2;
plot (x,g1(x),'b',x,g2(x),'g',x,g3(x),'r',x,g4(x),'y')
legend('a','b','c','y=x')

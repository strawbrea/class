 clc
clear all
format long 

f1 = @(x) (2.*x-3.*(sin(x))+5);

x=-4:.1:0;
plot(x,f1(x), 'blue', x, zeros(size(x)), 'black');
legend('F(x) = 0')

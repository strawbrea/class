clc

format long 

% function declaration
f = @(x) x.^3-2;

% derivative of function 
df = @(x)3*x.^2;

% initial guess
a = 10;

nmax = 100;

tol = eps('single');

apprx = q6(f, df, a, tol, nmax);

fprintf("f(x) = " + func2str(f) + "\n")

fprintf("initial guess: " + a + "\n")

fprintf("tolerance: " + tol + "\n")

fprintf("approximation: " + apprx)

%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    Breanna Lowery    %%
%%     Homework 5_6     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%

clc
clear all
close all

format long % results output in double precision

% input delcaration
f = @(x) 1-exp(x^2); % function
df = @(x) -2.*x.*exp(x^2); % derivative of function
a = 1; % intial guess
p = 1.9999; % power of exponent
nmax = 100; % max number of iterations allowed
sol = 0; % given solution


er = ones(1,nmax+1);
tol = eps('single'); % tolerance for stopping criterion

% calling newton
[apprx, er, k] = q8(f, df, a, tol, nmax, sol, er);

% display outputs
fprintf("f(x) = " + func2str(f) + "\n")
fprintf("initial guess: " + a + "\n")
fprintf("tolerance: " + tol + "\n")
fprintf("approximation: " + apprx + "\n")

%calculate and output the rate of convergence
for i=1:1:k
    output=er(i+1)./er(i);
    fprintf('output %.15f \n', output)
end

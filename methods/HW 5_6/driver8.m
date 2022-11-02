%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    Breanna Lowery    %%
%%     Homework 5_6     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%

clc
clear all
close all

format long % results output in double precision

% input delcaration
f = @(x) x*exp(-x); % function
df = @(x) exp(-x)-x*exp(-x); % derivative of function
a = 0.5; % intial guess
p=2; % power of exponent
nmax = 100; % max number of iterations allowed
sol = 0; % given solution

er = ones(1,nmax+1);
tol = eps('single'); % tolerance for stopping criterion

% calling newton
[apprx, er, k] = q8(f, df, a, tol, nmax, sol, er);

% display outputs
fprintf("f(x) = " + func2str(f) + "\n")
fprintf("\ninitial guess: " + a + "\n")
fprintf("\ntolerance: " + tol + "\n")
fprintf("\napproximation: " + apprx + "\n")

%calculate and output the rate of convergence
for i=1:1:k
    output=er(i+1)./er(i)^p;
    fprintf('\noutput %.15f \n', output)
end

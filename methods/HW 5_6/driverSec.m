%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    Breanna Lowery    %%
%%     Homework 5_6     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%

clc
clear all
close all

format long % results output in double precision


% input delcaration
f = @(x) x.^3-2; % function
a = 10; % intial guess
nmax = 2000; % max number of iterations allowed


tol = eps('single'); % tolerance for stopping criterion

% calling newton
apprx = q7(f, a, tol, nmax);

% display outputs
disp("f(x) = " + func2str(f) + "\n")
disp("initial guess: " + a + "\n")
disp("tolerance: " + tol + "\n")
disp("approximation: " + apprx)

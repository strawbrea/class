%%%%%%%%%%%%%%%%%%%%%%%%%%
%     Breanna Lowery     %
%       Project 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%%

clc
clear all
close all

format long % results output in double precision

% function definition
F = @(x) 2.*x-3.*sin(x)+5; % function (1)
G = @(x) x^3-8.5.*x^2+20.*x-8; % function (2)

%% 2B

% input delcaration
a = -2; % intial guess
nmax = 10; % max number of iterations allowed
k = 0;

tol = 1e-5; % tolerance for stopping criterion

% function call 
[x, g] = fixedPoint(F, k, a, nmax, tol);

% display outputs
fprintf("f(x) = " + func2str(F) + "\n")
fprintf("initial guess: " + a + "\n")
fprintf("tolerance: " + tol + "\n")
fprintf("approximation: " + x + "\n")

fplot(g) % plotting y = g(x)
hold on
fplot(@(x) x) % plotting y = x
legend('y = g(x)', 'y = x') 
grid on;

input('\n\nPress Enter key to continue\n\n');

%% 2D
close all 

% input delcaration
k = 1.5;
nmax = 20;

% function call 
[x] = fixedPoint(F, k, a, nmax, tol);

fprintf("F(x) = " + func2str(F) + "\n")
fprintf("initial guess: " + a + "\n")
fprintf("tolerance: " + tol + "\n")
fprintf("approximation: " + x + "\n")

input('\n\nPress Enter key to continue\n\n');

%% 2F
close all 

% input delcaration
k = 16;
nmax = 50;

% function call 
[x, g, i] = fixedPoint(F, k, a, nmax, tol);

fprintf("F(x) = " + func2str(F) + "\n")
fprintf("initial guess: " + a + "\n")
fprintf("tolerance: " + tol + "\n")
fprintf("approximation: " + x + "\n")
fprintf("converged at: " + i + "\n") % printing at which iteration it converged


input('\n\nPress Enter key to continue\n\n');

%% 3
close all 

% input declaration
a = 4.3; % initial guess
nmax = 1000; % max number of iterations allowed
k = 18;

tol = 1e-5; % tolerance for stopping criterion

% function call
[x, g, i] = fixedPoint(G, k, a, nmax, tol);

% display outputs
fprintf("G(x) = " + func2str(G) + "\n")
fprintf("initial guess: " + a + "\n")
fprintf("tolerance: " + tol + "\n")
fprintf("approximation: " + x + "\n")
fprintf("converged at: " + i + "\n") % printing at which iteration it converged

fplot(g) % plotting y = h(G)
hold on
fplot(@(x) x) % plotting y = x
legend('y = h(G)', 'y = x') 
grid on;

input('\n\nPress Enter key to continue\n\n');

%% 4

% function definition
dF = @(x) 2-3.*cos(x); % derivative of function (1)
dG = @(x) 3.*x^2-17.*x+20; % derivative of function (2)

% input declaration
a = 1; % intial guess
nmax = 10; % max number of iterations allowed

% calling newton
x = newtonF(F, dF, a, tol, nmax);
x = newtonG(G, dG, a, tol, nmax);

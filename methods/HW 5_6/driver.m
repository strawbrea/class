clc

format long 

%getting the function (enter x.^3-2)
    %prompt = 'enter a function f(x): '; [couldnt get to work]
    %f = @(x) input(prompt) [couldnt get to work]
f = @(x) x.^3-2;

%getting the derivative (enter 3*x.^2)
    %deriv = 'please enter the derivative of previously defined f(x): ';
    %df = @(x) input(deriv) [couldnt get to work]
df = @(x)3*x.^2;

%getting the initial guess (enter 10)
    %guess = 'please enter a guess for x_o: '; [couldnt get to work]
    %a= input(guess); [couldnt get to work]
a = 10;

nmax = 7;

tol = eps('single');

apprx = q6(f, df, a, tol, nmax);

disp("f(x) = " + func2str(f) + "\n")

disp("initial guess: " + a + "\n")

disp("tolerance: " + tol + "\n")

disp("approximation: " + apprx)

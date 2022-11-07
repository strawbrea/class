%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    Breanna Lowery    %%
%%     Homework 5_6     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%

function [x, er, k] = q8(f, df, a, tol, nmax, sol, er)

% input declaration
x = a;
r = sol;
er(1)=abs(x-r);
con = 0; % 0 means not converged, 1 means converged
k = 0; % counter

% newton iteration
for i=1:1:nmax
    k=i;
    prev = x; % updating approximation
    x = x - f(x)/df(x); % newton update
    er(i+1)= abs(x-r);
    disp(er(i+1)) % print rate at each iteration
    disp(i + ": " + x) % printing solution at each iteration
    if abs(f(x)) + abs(x-prev) < tol % if function converged
        fprintf('\nconverge\n\n');
        con = 1;
        break;
    end
end
if i == nmax && con == 0 % if function did not converge
    fprintf('\ndid not converge\n');
end

end

%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    Breanna Lowery    %%
%%     Homework 5_6     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%

function x = q7(f, a, tol, nmax)
x = a;
xn = 0;
con = 0; %0 means not converged, 1 means converged

for i=1:1:nmax
    prev = x;
    x = x - f(x) * ((x - xn)/(f(x)-f(xn)));
    xn = prev;
    disp(i + ": " + x)
    i = i + 1;
    if abs(f(x)) + abs(x-xn) < tol
        fprintf('converge\n');
        con = 1;
        break;
    end
end
if i == nmax && con == 0
    fprintf('did not converge');
end
end

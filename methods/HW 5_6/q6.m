%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    Breanna Lowery    %%
%%     Homework 5_6     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%

function x = q6(f, df, a, tol, nmax)
x = a;
con = 0; %0 means not converged, 1 means converged

for i=1:1:nmax
    prev = x;
    x = x - f(x)/df(x);
    disp(i + ": " + x)
    if abs(f(x)) + abs(x-prev) < tol
        fprintf('converge');
        con = 1;
        break;
    end
end
if i == nmax && con == 0
    fprintf('did not converge');
end
end

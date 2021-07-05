function res = repeated_simpson(a,b,n,f)
h = (b-a) / n;

xk = a:h:b;

res = h/6 * (f(a) + f(b) + 4*sum(f((xk(1:end-1) + xk(2:end))/2)) + 2*sum(f(xk(2:end-1))));
endfunction
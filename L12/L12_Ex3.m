f=@(x) x.^3-x.^2-1;
x0=1; x1=2; e=10^(-4);
N = 100; n=0;

while n<=N
  n=n+1;
  x=x1-f(x1)*(x1-x0)/(f(x1)-f(x0));
  if abs(x-x0)<e
    fprintf('Secanta: %f\n',x);
    fprintf('Current iteration: %d\n',n);
    return
  endif
  x0=x1;
  x1=x;

endwhile
fprintf('We out bois')
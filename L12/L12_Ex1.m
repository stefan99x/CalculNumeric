f=@(x) x-cos(x);
df=@(x) 1+sin(x);
x0=1; x1=2; e=10^(-4);
N = 100; n=0;

while n<=N
  n=n+1;
  x=x0-f(x0)/df(x0);
  if abs(x-x0)<e
    fprintf('Newton: %f\n',x);
    fprintf('Current iteration: %d\n',n);
    return
  endif
  x0=x;

endwhile
fprintf('We out bois')

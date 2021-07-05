f=@(x) (x-2)^2-log(x);
a=1; b=2; e=10^(-4);
N = 100; n=0;

if f(a)*f(b)<0
  while n<=N
    n=n+1;
    c=(a+b)/2;
    if abs(f(c))<e
      fprintf('Bisectoare: %f\n',x);
      fprintf('Current iteration: %d\n',n);
      return
    endif
    if f(a)*f(c)<=0
      b=c;
    else
      a=c;
    endif
  endwhile
  fprintf('We out bois')
else
  fprintf('Nu are cum sa mearga')
endif
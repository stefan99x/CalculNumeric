a = 1; b = 2;
e = 10 ^(-4);
N = 100;

f = @(x) (x-2)^2 - log(x);

n = 0;
if f(a)*f(b)<0
  while n<=N
    c = (f(b)*a - f(a)*b) / (f(b)-f(a));
    n = n+1;
    if abs(f(c))<=e
      fprintf('FalsePosition: %f\n',x);
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
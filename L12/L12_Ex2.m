E0=1;
N=6;
f=@(E) E - 0.8*sin(E) - 2*pi/10;
df=@(E) 1 - 0.8*cos(E);

n=0;
while n <= N
  n=n+1;
  E=E0-f(E0)/df(E0);
  
  if n == 6
    fprintf('Approx = %f \n',E);
    fprintf('Current Iteration %d \n',n);
    return
  endif
  
  E0=E;
endwhile
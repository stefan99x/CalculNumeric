function res = simpson(a,b,f)
  res = (b-a) /6*(f(a) + f(b) + 4*f(a+(b-a)/2));
endfunction
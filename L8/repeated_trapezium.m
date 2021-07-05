function T = repeated_trapezium(f, a, b, n)
  h = (b - a) / n;
  x = a : h : b;
  T = (b - a) ./ (2 .* n) .* ( f(a) + f(b) + 2 .* sum(f(x(2 : n))));
endfunction
a = 1; b = 2;
f = @(x) (x .* log(x));

Int = integral(f, a, b)

for n = 1 : 1000 : 10000
  result = repeated_trapezium(f, a, b, n)
endfor
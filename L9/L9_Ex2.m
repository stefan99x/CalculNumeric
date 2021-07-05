a = 0;
b = 1;
f = @(x) 2 ./ (1 + x.^2);

prec = 10^-4;

k = 0;

h = b - a;

prev_value = (h/2) * (f(a) + f(b));

while (1)
  k = k + 1
  j = 1:1:2^(k - 1);  
  current_value  = 0.5 * prev_value + h / (2^k) * sum(f(a + (2.*j - 1) / (2^k) * h));
  
  if(abs(current_value - prev_value) > prec)
    prev_value = current_value;
  else
    break
  endif

endwhile

current_value
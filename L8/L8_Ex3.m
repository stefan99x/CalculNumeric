a = 0;
b = 2 * pi;
r = 110;
p = 75;

n1 = 2;
n2 = 3;

non_integral = 60 * r / (r^2 - p^2);
f = @(x) sqrt(1 - (p / r) ^ 2 * sin(x));

h1 = (b - a) / n1;
h2 = (b - a) / n2;

xk1 = [a];
for i = 2 : n1
  xk1(i) = xk1(i-1) + h1;
endfor

xk2 = [a];
for i = 2 : n2
  xk2(i) = xk2(i-1) + h2;
endfor

integral1 = h1/2 * (f(a) + f(b) + 2 * sum(f(xk1(2:end))));
integral2 = h2/2 * (f(a) + f(b) + 2 * sum(f(xk2(2:end))));

integral1_val = non_integral * integral1
integral2_val = non_integral * integral2
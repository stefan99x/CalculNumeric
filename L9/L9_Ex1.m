a = 1; b = 1.5;

f = @(x) exp(-(x.^2));

% a.) Use the rectangle formula (1) to evaluate the int
int = (b-a)*f((a+b)/2)

% b.) Plot the graph of the function f and the graph of the rectangle which
% area approximates the integral by formul
hold on
fplot(f, [a,b]);
rectangle('Position', [a 0 b f((a + b)/ 2)]);

% c.) Use the repeated rectangle formula (2), for n = 150 and 500; to evaluate
% the in
n1 = 150; n2 = 500;

h1 = (b-a)/n1;
h2 = (b-a)/n2;

sum1 = 0;
x1 = a + ((b-a)/(2*n1));
for i = 1:n1
  sum1 = sum1 + f(x1 + (i-1)*((b-a)/n1));
endfor

int_rep1 = h1*sum1

sum2 = 0;
x2 = a + ((b-a)/(2*n2));
for i = 1:n2
  sum2 = sum2 + f(x2 + (i-1)*((b-a)/n2));
endfor

int_rep2 = h2*sum2
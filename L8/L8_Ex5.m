a = 0; b = pi;
f = @(x) 1 ./ (4+sin(20 .*x));

n1 = 10;
n2 = 30;

h1 = (b-a) / n1;
xi1 = a:h1:b;

h2 = (b-a) / n2;
xi2 = a:h2:b;

Int_Simpson1 = h1/3*(f(xi1(1))
             + 2*sum(f(xi1(3:2:end-2)))
             + 4*sum(f(xi1(2:2:end))) 
             + f(xi1(end)))
            
Int_Simpson2 = h2/3*(f(xi2(1)) 
             + 2*sum(f(xi2(3:2:end-2)))
             + 4*sum(f(xi2(2:2:end))) 
             + f(xi2(end)))
             
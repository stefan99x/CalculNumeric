x=[1 2 3 4 5];
f=[22 23 25 30 28];

yi = [2.5];

N = NewtonPolynomialInterpolation(x,f,yi)

plot(x,f,'b*')

hold on

z = 0:0.01:6;
A = NewtonPolynomialInterpolation(x, f, z);

plot(z, A,'r')
x=[1 1.5 2 3 4];
f=[0 0.17609 0.30103 0.47712 0.60206];
i = 10:35;
yi = i./10;
N = NewtonPolynomialInterpolation(x,f,yi);
E = max(abs(log10(yi)-N))
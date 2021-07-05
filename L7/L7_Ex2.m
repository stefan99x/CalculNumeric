#a)
#     Obtain two least squares approximations for the given data, using polyf it
# for 2 di§erent degrees of the polynomials. Find their values for T = 45 using
# polyval. Compute the approximation errors, knowing that the exact value is
# P(45) = 0:095848;

x = [0,10,20,30,40,60,80,100];
f = [0.0061, 0.0123, 0.0234, 0.0424, 0.0738, 0.1992, 0.4736, 1.0133];

p1 = polyfit(x,f,8);
p2 = polyfit(x,f,2);

v1 = polyval(p1, 45)
v2 = polyval(p2, 45)

exactVal = 0.095848;
printf("Approximation error first polynomial %f\n", abs(exactVal - v1));
printf("Approximation error second polynomial %f\n", abs(exactVal - v2));

E_min1 = sum((f-polyval(p1, x)).^2)
E_min2 = sum((f-polyval(p2, x)).^2)


#b)
#     Plot the interpolation points, the least squares approximants and the
# interpolation polynomial, in the same figure.

hold on
xp = 0:10:100;

plot(x,f,'ro');
plot(xp, polyval(p1, xp), 'g-');
plot(xp, polyval(p2, xp), 'b-');
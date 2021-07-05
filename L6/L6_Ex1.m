
#a) display the value of the function, the value of the cubic natural spline
#   and the value of cubic clamped spline function at x = pi/4

x = [0, pi/2, pi, 3*pi/2, 2*pi];
y = sin(x);

val = sin(pi/4)
cubic = spline(x, y)

y2 = [1 y 1];

clamped = spline(x, y2, pi/4)

#b) plot the graphs of the function, the cubic natural spline and the cubic
#   clamped spline functions, in the same figure. ;

hold on  # make sure the plot doesn't run  (jk to be in the same figure)

xx = 0:0.001:2*pi;

plot(xx, sin(xx), 'r')              #plot of the graph of the function
plot(xx, spline(x, y, xx), 'g')     #plot of the cubic natural spline 
plot(xx, spline(x, y2, xx), 'b')    #plot of the clamped spline
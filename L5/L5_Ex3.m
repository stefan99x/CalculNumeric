x = [-5:0.1:5]; 
fx = sin(2 * x);
t = linspace(-5, 5, 15);
d = sin(2 * t);
v = 2 * cos(2 * t);

ans = HermitePol(t, d, v, x); # compute the HermitePolynomial

figure(1);  # define the figure
plot(t, d, "h*", x, ans, "r"); # x1 = t, y1 = d, h* = hexagram with the marker start
                               # x2 = x, y2 = ans, r = color red
                            
# the plot will read the first 3 parameters as a graph and the following ones
# will be stack over the previous ones   

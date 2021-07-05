#3. Consider 10 random points in the plane [0,3]X[0,5] using Matlab function
# ginput: Plot the points and the least squares polynomial of 2nd degree that 
# best fits these points.
rectangle('Position', [0,0,3,5]);
[x, f] = ginput(10)

hold on
plot(x, f, 'bo');

p1 = polyfit(x,f,2);

xp = 0:0.01:3;
plot(xp, polyval(p1, xp), 'r-');
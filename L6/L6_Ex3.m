x = 0 : pi/4 : 2*pi;
y = cos(x);

interval = 0 : 0.01: 2*pi; # as the name implies is the interval

interp = interp1(x, y, interval); # one dimensional interpolation
                
plot(interval, cos(interval),'r', interval, interp, 'b'); # the plot of the graph of the function
                                                          # and of the corresponding linear spline function
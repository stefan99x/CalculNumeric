[x, y] = ginput(5) # read the inputs
xx = 0:0.01:1;

hold on                      # to be ploted in the same graph
plot(x, y, "*")                   # plot for the inputs (to see better were we clicked)
plot(xx, spline(x,y, xx))    # plot with spline using previous inputs
# Python 3.9 program for plotting parametric
# Runs on both Mac and PC with IDLE
# Source code can be used for Anaconda and Spyder

from mpl_toolkits.mplot3d import Axes3D
from numpy import linspace, sin, cos, pi
from pylab import title, figure, subplot, plot, legend, show

def pramplot(r):
    t = linspace(-4 * pi, 4 * pi, 100)
    x = r * sin(t)
    y = r * cos(t)
    ax.plot(x, y, z)

fig = figure()

ax = fig.add_subplot(2, 2, 1, projection='3d')
title('Parametric Hellx')
z = linspace(-2, 2, 100)
r = 5
pramplot(r)

ax = fig.add_subplot(2, 2, 2, projection='3d')
title('Parametric curve')
z = linspace(-2, 2, 100)
r = z * 2 + 5
pramplot(r)

ax = fig.add_subplot(2, 2, 3, projection='3d')
title('Parametric curve')
z = linspace(-2, 2, 100)
r = z * -2 + 5
pramplot(r)

ax = fig.add_subplot(2, 2, 4, projection='3d')
title('Parametric curve')
z = linspace(-2, 2, 100)
r = z**2 + 3
pramplot(r)
show()

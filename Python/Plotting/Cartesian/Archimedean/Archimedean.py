# Python 3.11 program for plotting Archimedean Spiral
# Runs on both Mac, PC and RP5 with IDLE
# Source code can be used for Anaconda and Spyder

from numpy import radians, linspace, cos, sin
from pylab import plot, show


a = .1

t = radians(linspace(0,360*3,1000))
r = t * a
x = r*cos(t)
y = r*sin(t)
plot(x,y)
show()

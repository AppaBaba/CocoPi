# Python 3.7.4 program for plotting lobes
# Works with Anconda3 (5.2.0) using VS Python Suport
# Source code can be used in Spyder also

from numpy import arange, sin, cos, pi
from pylab import figure, polar, show

t = arange(0, 2, 1./180)*pi
figure(1)
polar(t, sin(t * 2))
figure(2)
polar(t, sin(t * 3))
figure(3)
polar(t,sin(t * 4))
figure(4)
polar(t, sin(t * 5))
show()

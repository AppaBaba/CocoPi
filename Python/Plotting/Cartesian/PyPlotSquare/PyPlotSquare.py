# Python 3.9 program for plotting the square
# Runs on both Mac and PC with ILDE
# Source code can be used for Anaconda and Spyder

import scipy as sci
import matplotlib.pylab as sq
t = sci.linspace(0, 1, 100)
sq.plot(t, t**2)
sq.show()

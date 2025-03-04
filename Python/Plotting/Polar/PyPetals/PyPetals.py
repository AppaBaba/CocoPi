# Python 3.7.4 program for plotting petals
# Works with Anconda3 (5.2.0) using VS Python Suport
# Source code can be used in Spyder also

from numpy import arange, sin, cos, pi
from pylab import polar, show, title

# Function to cardioid with sin()
def petalspsin(a, b):
    t = arange(0, 2*pi, .01)
    polar(t, a * sin(t * n))
    heading = "%s * sin(t * %s)"%(a, n)
    title(heading)

# Function to plot cardioid with -sin() 
def petalsnsin(a, b):
    t = arange(0, 2*pi, .01)
    polar(t, a * -sin(t * n))
    heading = "%s * -sin(t * %s)"%(a, n)
    title(heading)

# Function to plot cardioid with cos()
def petalspcos(a, b):
    t = arange(0, 2*pi, .01)
    polar(t, a * cos(t * n))
    heading = "%s * cos(t * %s)"%(a, n)
    title(heading)

# Function to plot cardioid with -sin()
def petalsncos(a, b):
    t = arange(0, 2*pi, .01)
    polar(t, a * -cos(t * n))
    heading = "%s * -cos(t * %s)"%(a, n)
    title(heading)

print("Pick Petal type -\n"
		"1. sin\n"
		"2. -sin\n"
		"3. cos\n" 
		"4. -sin\n") 


# Take input from the user 
select = input("Select operations form 1, 2, 3, 4 :") 

a = int(input('Enter a: '))
n = int(input('Ebter n: '))

if select == '1': 
	petalspsin(a, n)

elif select == '2': 
	petalsnsin(a, n)

elif select == '3': 
	petalspcos(a, n)

elif select == '4': 
	petalsncos(a, n)
else: 
	print("Invalid input") 

show()

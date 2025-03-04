# Python 3.7.4 program for plotting cardioids
# Works with Anconda3 (5.2.0) using VS Python Suport
# Source code can be used in Spyder also

from numpy import arange, sin, cos, pi
from pylab import polar, show, title

 

# Function to cardioid with sin()
def cardioidpsin(a, b):
    t = arange(0, 2*pi, .01)
    polar(t, a + (b * sin(t)))
    heading = "%s + %s * sin(t)"%(a, b)
    title(heading)

# Function to plot cardioid with -sin() 
def cardioidnsin(a, b):
    t = arange(0, 2*pi, .01)
    polar(t, a + (b * -sin(t)))
    heading = "%s + %s * -sin(t)"%(a, b)
    title(heading)

# Function to plot cardioid with cos()
def cardioidpcos(a, b):
    t = arange(0, 2*pi, .01)
    polar(t, a + (b * cos(t)))
    heading = "%s + %s * cos(t)"%(a, b)
    title(heading)

# Function to plot cardioid with -sin()
def cardioidncos(a, b):
    t = arange(0, 2*pi, .01)
    polar(t, a + (b * -cos(t)))
    heading = "%s + %s * -cos(t)"%(a, b)
    title(heading)

def input2num():
    num1 = int(input("First number: "))
    num2 = int(input("Second number: "))
    return (num1, num2)

print("Pick Cardioid type -\n"
		"1. sin\n"
		"2. -sin\n"
		"3. cos\n" 
		"4. -sin\n") 


# Take input from the user 
select = input("Select operations form 1, 2, 3, 4 :") 

# a = int(input("Enter a: ")) 
# b = int(input("Enter b: "))

# or

# astring = input ('Enter a: ')  
# bstring = input ('Enter b: ')
# a = int(astring)
# b = int(bstring)

# or

(a, b) = input2num()


if select == '1': 
	cardioidpsin(a, b)

elif select == '2': 
	cardioidnsin(a, b)

elif select == '3': 
	cardioidpcos(a, b)

elif select == '4': 
	cardioidncos(a, b)
else: 
	print("Invalid input") 


show()

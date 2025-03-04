from turtle import *
bgcolor("Black")
color("Gold")
speed(10)
s = 0
for i in range(50):
    for j in range(4):
        forward(s)
        right(90)
        s = s + 2
        right(5)
forward(s/2)
done()

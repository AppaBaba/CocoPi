from turtle import *
bgcolor("Black")
color("Gold")
speed(10)
s = [3, 4, 6]
a = 120
for k in s:
    d = 0
    setpos(0,0)
    clear()
    for i in range(20):
        for j in range(k):
            forward(d)
            right(a)
            d = d + 8 - k
            right(5)
    a = a - 30
forward(d/2)
done()

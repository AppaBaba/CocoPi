from turtle import *
speed(10)
bgcolor("Turquoise")
colors = ["Purple", "Blue", "Red"]
cl = 0
c = colors[cl]

s = [3, 4, 6]
a = 120
for k in s:
    d = 0
    setpos(0,0)
    clear()
    c = colors[cl]
    color(c)
    for i in range(20):
        for j in range(k):
            forward(d)
            right(a)
            d = d + 8 - k
            right(5)
    a = a - 30
    forward(d/2)
    cl = cl + 1
done()


from microbit import *
while True:
    count = 0
    display.show(count)
    while count < 10:
        display.show(count)
        count += 1
        sleep(500)
from microbit import *

while (True):
    cmd = input('What is your command? ')
    if cmd == 's':
        sleep(300)
        display.show(Image.SQUARE)
        sleep(1000)
    elif cmd == 'd':
        sleep(300)
        display.show(Image.DIAMOND)
        sleep(1000)
    elif cmd == 'h':
        sleep(300)
        display.show(Image.HEART)
        sleep(1000)
    else :
        sleep(300)
        display.clear()
        sleep(1000)
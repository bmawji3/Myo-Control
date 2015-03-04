#Worked with Marc, Nicholas, and Shyam @ HackGTeeny

from Graphics import *
from Myro import *
from time import *

win = Window("Controller", 500, 500)
init('sim')

def handleKeyRelease(win, event):
    if event.key == "Up":
        forward(1)
    if event.key == "Down":
        backward(1)
    if event.key == "Left":
        turnLeft(1)
    if event.key == "Right":
        turnRight(1)
    if event.key == "s":
        stop()


onKeyPress(handleKeyRelease)

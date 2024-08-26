from machine import Pin, PWM
from time import sleep
import random
#buttons
button1 = Pin(16, Pin.IN)
button2 = Pin(18, Pin.IN)
button3 = Pin(21, Pin.IN)
button4 = Pin(22, Pin.IN)
button5 = Pin(27, Pin.IN)
#Leds
Red1 = Pin(15, Pin.OUT)
green2 = Pin(12, Pin.OUT)
yellow3 = Pin(8, Pin.OUT)
blue4 = Pin(4, Pin.OUT)
import random
import time

# Этот скрипт нагружает cpu и процесс, исполняющий данный скрипт должен выводиться в скрипте

while True:
    value = (
        random.random()
        * random.random()
        * random.random()
        * random.random()
        * random.random()
        * random.random()
        * random.random()
        * random.random()
        * random.random()
        * random.random()
        * random.random()
    )
    time.sleep(0.0005)
    print(value)

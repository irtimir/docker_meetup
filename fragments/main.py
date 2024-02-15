#!/usr/bin/env python
import random
import time


def sometimes_raise():
    if random.choice(range(10)) == 0:
        raise Exception()
    print('OK')


def main():
    while True:
        sometimes_raise()
        time.sleep(1)


if __name__ == '__main__':
    main()

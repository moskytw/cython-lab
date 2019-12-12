#!/usr/bin/env python


from os import fork, kill
from signal import SIGTERM
from time import sleep


def parent():
    print("It is annoying, right? Press 'y' to exit.")
    while input() != 'y':
        pass
    kill(child_pid, SIGTERM)


def child():
    while 1:
        sleep(0.5)
        print('Hi, there!')


if __name__ == '__main__':

    child_pid = fork()
    if child_pid < 0:
        print("Can't fork.")
    elif child_pid == 0:
        child()
    else:
        parent()

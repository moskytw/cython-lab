#!/usr/bin/env python
# -*- coding: utf-8 -*-

from os import fork, kill
from signal import SIGTERM
from time import sleep

def parent():
    print "It is annoying, right? Press 'y' to exit."
    while raw_input() != 'y':
        pass

def child():
    sleep(0.5)
    print 'Hi, there!'

if __name__ == '__main__':

    chld_pid = fork()

    if chld_pid < 0:
        print "Can't fork."
    elif chld_pid == 0:
        child()
    else:
        parent()
        kill(chld_pid, SIGTERM)

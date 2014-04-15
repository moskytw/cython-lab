#!/usr/bin/env python
# -*- coding: utf-8 -*-

cdef extern from "unistd.h":
    int fork()

cdef extern from "signal.h":
    int kill(int, int)

from time import sleep
from signal import SIGTERM

def parent():
    print "It is annoying, right? Press 'y' to exit."
    while raw_input() != 'y':
        pass

def child():
    while 1:
        sleep(0.5)
        print 'Hi, there!'

def main():

    cdef int child_pid = fork()
    if child_pid < 0:
        print "Can't fork."
    elif child_pid == 0:
        child()
    else:
        parent()
        kill(child_pid, SIGTERM)

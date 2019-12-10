cdef extern from "unistd.h":
    int fork()

cdef extern from "signal.h":
    int kill(int, int)
    int SIGTERM

from time import sleep

def parent():
    print("It is annoying, right? Press 'y' to exit.")
    while input() != 'y':
        pass

def child():
    while 1:
        sleep(0.5)
        print 'Hi, there!'

def main():

    cdef int child_pid = fork()
    if child_pid < 0:
        print("Can't fork.")
    elif child_pid == 0:
        child()
    else:
        parent()
        kill(child_pid, SIGTERM)

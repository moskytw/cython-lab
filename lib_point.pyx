cdef struct Point:
    int x
    int y

def main():
    cdef Point p = {'x': 10, 'y': 20}
    print p.get('z')

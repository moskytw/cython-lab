cdef struct Point:
    int x
    int y


def main():
    d = {'x': 10, 'y': 20}
    cdef Point p = d
    print(p.get('z'))

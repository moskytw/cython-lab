cdef struct Point:
    int x
    int y


def main():

    d = {'x': 10, 'y': 20}

    # test Python dict to C struct

    cdef Point p = d
    assert p.x == 10
    # assert p['y'] == 20
    # # -> Attempting to index non-array type 'Point'

    # test C struct to Python dict

    assert dict(p)['y'] == 20
    assert p.get('z') is None

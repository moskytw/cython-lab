def main():

    assert sizeof(int) == 4
    print('sizeof(int) ->', sizeof(int))
    # -2147483648 ~ 2147483647 if 32-bit int

    cdef int i = 2147483647
    assert(i == 2147483647)
    print('i ->', i)

    i += 1
    assert(i == -2147483648)
    print('i ->', i)

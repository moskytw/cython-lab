def say_hello(name=None):
    '''Tests calling C function in pyx.

    The C functions in same file can be accessed directly.'''

    if name is None:
        return say_hello_in_c()

    return say_hello_in_c(name)


cdef say_hello_in_c(char *name=b'World'):
    '''Implements a function in C.'''
    return 'Hello, {}!'.format(name)


cpdef say_hello_by_cpdef(char *name=b'World'):
    '''Implements a function by cpdef.'''
    return 'Hello, {}!'.format(name)

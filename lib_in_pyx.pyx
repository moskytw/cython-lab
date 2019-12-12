cdef say_hello_by_cdef(name='World'):
    return 'Hello, {}!'.format(name)


cpdef say_hello_by_cpdef(name='World'):
    return 'Hello, {}!'.format(name)


def say_hello_by_def(name='World'):
    return 'Hello, {}!'.format(name)


def call_say_hello_by_cdef(name='World'):
    return say_hello_by_cdef(name)

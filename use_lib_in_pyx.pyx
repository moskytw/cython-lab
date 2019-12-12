import lib_in_pyx
cimport lib_in_pyx  # needs lib_in_pyx.pxd to use cdef

print('.pyx calls another .pyx cdef:')
print(lib_in_pyx.say_hello_by_cdef())
print(lib_in_pyx.say_hello_by_cdef('Mosky'))
print()

print('.pyx calls another .pyx cpdef:')
print(lib_in_pyx.say_hello_by_cpdef())
print(lib_in_pyx.say_hello_by_cpdef('Mosky'))
print()

print('.pyx calls another .pyx def:')
print(lib_in_pyx.say_hello_by_def())
print(lib_in_pyx.say_hello_by_def('Mosky'))
print()

print('In another .pyx, a def calls a cdef:')
print(lib_in_pyx.call_say_hello_by_cdef())
print(lib_in_pyx.call_say_hello_by_cdef('Mosky'))
print()


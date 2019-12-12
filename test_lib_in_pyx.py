#!/usr/bin/env python

import lib_in_pyx
import use_lib_in_pyx

print('.py cannot call .pyx cdef:')

# # ``cimport`` is Cython's statement
# cimport lib_in_pyx
# # -> SyntaxError

# print(lib_in_pyx.say_hello_by_cdef())
# print(lib_in_pyx.say_hello_by_cdef('Mosky'))
# # -> AttributeError

print()


print('.py calls .pyx cpdef:')
print(lib_in_pyx.say_hello_by_cpdef())
print(lib_in_pyx.say_hello_by_cpdef('Mosky'))
print()

print('.py calls .pyx def:')
print(lib_in_pyx.say_hello_by_def())
print(lib_in_pyx.say_hello_by_def('Mosky'))
print()


#!/usr/bin/env python
# -*- coding: utf-8 -*-


# the Python functions in lib_in_pyx (.so) are accessible

import lib_in_pyx

print(lib_in_pyx.say_hello())
print(lib_in_pyx.say_hello(b'Mosky'))
print()


# .py only can access Python functions

# # ``cimport`` is Cython's statement
# cimport lib_in_pyx
# # -> SyntaxError

# print(lib_in_pyx.say_hello_in_c())
# print(lib_in_pyx.say_hello_in_c('Mosky'))
# # -> AttributeError


# but .pyx can access C functions defined in other file and exposed by .pyd

print(lib_in_pyx.say_hello_by_cpdef())
print(lib_in_pyx.say_hello_by_cpdef(b'Mosky'))
print()

import use_lib_in_pyx  # noqa

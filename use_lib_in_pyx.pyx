#!/usr/bin/env python
# -*- coding: utf-8 -*-

import lib_in_pyx
cimport lib_in_pyx # needs lib_in_pyx.pxd

print lib_in_pyx.say_hello()
print lib_in_pyx.say_hello('Mosky')
print

print lib_in_pyx.say_hello_in_c()
print lib_in_pyx.say_hello_in_c('Mosky')

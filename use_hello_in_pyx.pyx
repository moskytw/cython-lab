#!/usr/bin/env python
# -*- coding: utf-8 -*-

import hello
cimport hello

print hello.hello_def()
print hello.hello_def('Mosky')
print

print hello.hello_cdef()
print hello.hello_cdef('Mosky')

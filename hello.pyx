#!/usr/bin/env python
# -*- coding: utf-8 -*-

def hello_def(name='World'):
    return 'Hello, %s!' % name

cdef hello_cdef(char* name='World'):
    return 'Hello, %s!' % name

#!/usr/bin/env python
# -*- coding: utf-8 -*-

from glob import glob
from distutils.core import setup
from Cython.Build import cythonize

setup(
    name = 'cython-lab',
    # cythonize accepts a list
    # pydoc Cython.Build.cythonize
    ext_modules = cythonize(glob('*.pyx')),
)

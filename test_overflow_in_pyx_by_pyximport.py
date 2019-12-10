#!/usr/bin/env python

import pyximport
pyximport.install()

import overflow_in_pyx  # noqa

if __name__ == '__main__':
    overflow_in_pyx.main()

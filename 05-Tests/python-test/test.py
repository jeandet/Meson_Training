#!/bin/env python
import ctypes
mylib = ctypes.CDLL('simplelib/libsimplelib.so')

if 2 == mylib.my_sum(1, 1):
    exit(0)
exit(1)

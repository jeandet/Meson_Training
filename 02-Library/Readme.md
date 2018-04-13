# Simple library

## Introduction
This project contains a single source file **mylib.c** with a single function **myfunction** which prints ```Hello World from mylib``` and returns 0xABCD.

## Exercise 

Build a dynamic library called **lib02-library.so** from **mylib.c**.

## Expected output 

```
./check.xsh 
The Meson build system
Version: 0.45.1
Source dir: /home/jeandet/Documents/prog/Meson_Training/02-Library
Build dir: /home/jeandet/Documents/prog/Meson_Training/02-Library/build
Build type: native build
Project name: 02-Library
Native C compiler: ccache cc (gcc 8.0.1 "cc (GCC) 8.0.1 20180324 (Red Hat 8.0.1-0.20)")
Build machine cpu family: x86_64
Build machine cpu: x86_64
Build targets in project: 1
Found ninja-1.8.2 at /usr/bin/ninja
[2/2] Linking target lib02-library.so.
Hello World from mylib
Got: ABCD
Success!
```

## Hints


# Tests

## Introduction
This program shows how you can easily integrate tests for your program. It contains a very simple library **simplelib** which provides a function **my_sum**. 
The function is tested in 3 different ways:
    - a simple C code in **manual-test** folder with a single source file
    - a simple Python script in **python-test** folder
    - a basic C++ code with GTest API in **gtest-test** folder

**Meson** proposes a way to declare and call tests with some features such as test parallelization 

## Exercise 

You have to build a library from **simplelib.c**, build C and C++ tests and invoke each test from **Meson**.
You know how to use **dependencies** and **WrapDB** now, so finding GTest shoudn't be an issue.

## Expected output 

```
./check.xsh 
The Meson build system
Version: 0.45.1
Source dir: /home/jeandet/Documents/prog/Meson_Training/05-Tests
Build dir: /home/jeandet/Documents/prog/Meson_Training/05-Tests/build
Build type: native build
Project name: 04-Tests
Native C compiler: ccache cc (gcc 8.0.1 "cc (GCC) 8.0.1 20180324 (Red Hat 8.0.1-0.20)")
Native C++ compiler: ccache c++ (gcc 8.0.1 "c++ (GCC) 8.0.1 20180324 (Red Hat 8.0.1-0.20)")
Build machine cpu family: x86_64
Build machine cpu: x86_64
Dependency GTest found: YES (prebuilt)
Program python-test/test.py found: YES (/home/jeandet/Documents/prog/Meson_Training/05-Tests/python-test/test.py)
Build targets in project: 3
Found ninja-1.8.2 at /usr/bin/ninja
[7/7] Linking target gtests_test_exe.
[0/1] Running all tests.
1/3 manual_test_c                           OK       0.00 s
2/3 manual_test_py                          OK       0.02 s
3/3 gtest_test                              OK       0.01 s

OK:         3
FAIL:       0
SKIP:       0
TIMEOUT:    0

Full log written to /home/jeandet/Documents/prog/Meson_Training/05-Tests/build/meson-logs/testlog.txt

```

## Hints

# Cross Compilation

## Introduction
Cross compilation is also a common task if you work on embedded systems or want to build your program on different operating systems.

## Exercise 

Take exercise 01 code and build it for windows.

## Expected output 

```
./check.xsh 
The Meson build system
Version: 0.45.1
Source dir: /home/jeandet/Documents/prog/Meson_Training/09-Cross-Compilation
Build dir: /home/jeandet/Documents/prog/Meson_Training/09-Cross-Compilation/build
Build type: cross build
Project name: 09-Cross-Compilation
0021:fixme:heap:RtlSetHeapInformation (nil) 1 (nil) 0 stub
Native C compiler: ccache cc (gcc 8.0.1 "cc (GCC) 8.0.1 20180324 (Red Hat 8.0.1-0.20)")
Cross C compiler: /usr/bin/i686-w64-mingw32-gcc (gcc 7.2.0)
Host machine cpu family: x86
Host machine cpu: i686
Target machine cpu family: x86
Target machine cpu: i686
Build machine cpu family: x86_64
Build machine cpu: x86_64
Build targets in project: 1
Found ninja-1.8.2 at /usr/bin/ninja
[2/2] Linking target 09-Cross-Compilation.exe.
Success!
Got: Hello World!

```

## Hints

- Cross compilation documentation for Meson http://mesonbuild.com/Cross-compilation.html#cross-compilation
- On Fedora you will find cross compilation tools with this path /usr/bin/i686-w64-mingw32-*
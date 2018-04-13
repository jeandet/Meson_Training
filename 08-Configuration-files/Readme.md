# Configuration file

## Introduction
Another usage of generated files is to store information such as software version, availability of a function or a strucutre in a header file with C macros.
For example this is common to find a file called **config.h** with some content like this:
```
#define HAVE_SYS_PRCTL_H 1

#define HAVE_SYS_RESOURCE_H 1

#define HAVE_SYS_SOCKET_H 1

#define HAVE_SYS_STAT_H 1

#define HAVE_SYS_TIMES_H 1

#define HAVE_SYS_TIME_H 1

#define HAVE_SYS_TYPES_H 1

#define HAVE_SYS_UTSNAME_H 1

#define HAVE_SYS_WAIT_H 1

#define HAVE_TM_GMTOFF 1

#define HAVE_UCONTEXT_H 1

#define HAVE_UINT128_T 1
```

Where each define is set or unset to tell if the corresponding feature is available.

## Exercise 

Build an executable named **08-Configuration-files** from **main.c** and a configuration header named **config.h** with inside:
 - ```#define HAVE_STRING_H 1``` if Meson finds string.h
 - ```#define HAVE_MEMORY_H 1``` if Meson finds memory.h
 - ```#define HAVE_LIMITS_H 1``` if Meson finds limits.h
 - ```#define HAVE_SYSLOG_H 1``` if Meson finds syslog.h
 - ```#define SIZEOF_INT <size>``` with size being the detected size of an int from Meson
 - ```#define HAVE_MMAP 1``` if Meson finds mmap function (which is available on Linux)


## Expected output 

```
./check.xsh 
The Meson build system
Version: 0.45.1
Source dir: /home/jeandet/Documents/prog/Meson_Training/08-Configuration-files
Build dir: /home/jeandet/Documents/prog/Meson_Training/08-Configuration-files/build
Build type: native build
Project name: 08-Configuration-files
Native C compiler: ccache cc (gcc 8.0.1 "cc (GCC) 8.0.1 20180324 (Red Hat 8.0.1-0.20)")
Build machine cpu family: x86_64
Build machine cpu: x86_64
Has header "string.h": YES
Has header "memory.h": YES
Has header "limits.h": YES
Has header "syslog.h": YES
Checking for size of "int": 4
Checking for function "mmap": YES
Configuring config.h using configuration
Build targets in project: 1
Found ninja-1.8.2 at /usr/bin/ninja
[2/2] Linking target 08-Configuration-files.
Success!
Got: SIZEOF_INT 4
HAVE_STRING_H
HAVE_MEMORY_H
HAVE_LIMITS_H
HAVE_SYSLOG_H
HAVE_MMAP

```

## Hints
- Meson documentation about configuration: http://mesonbuild.com/Configuration.html
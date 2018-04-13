# Generator

## Introduction
This is quite usual to generate sources to build an application, **Flex**, **Bison**, **SWIG** are good example of code generators. 
While they serve different purposes, they usualy work in the same way:
 - you write an input file with a dedicated langage
 - you invoke the generator with the input file path and the output file path
 - you build your application with both your regular sources and the generated ones
 
In this simplified example, we have a simple python script (**generator.py**) which will read the given input file and substitute the string **message** by **Hello Wrold**.
The input file (**main.c.in**) is a simple **C** hello world whith the following content:

```
#include <stdio.h>

int main(int argc, char** argv)
{{
    printf("{message}");
}}
```

Invoking the generator with ```generator.py main.c.in main.c``` will generate the following **main.c**:

```
#include <stdio.h>

int main(int argc, char** argv)
{
    printf("Hello World!\n");
}

```

## Exercise 

Build an executable named **07-generator** from generated **main.c**.

## Expected output 

```
./check.xsh 
The Meson build system
Version: 0.45.1
Source dir: /home/jeandet/Documents/prog/Meson_Training/07-Generators
Build dir: /home/jeandet/Documents/prog/Meson_Training/07-Generators/build
Build type: native build
Project name: 07-Generator
Native C compiler: ccache cc (gcc 8.0.1 "cc (GCC) 8.0.1 20180324 (Red Hat 8.0.1-0.20)")
Build machine cpu family: x86_64
Build machine cpu: x86_64
Program generator.py found: YES (/home/jeandet/Documents/prog/Meson_Training/07-Generators/generator.py)
Build targets in project: 1
Found ninja-1.8.2 at /usr/bin/ninja
[1/3] Generating '07-generator@exe/main.c'.
../main.c.in
[3/3] Linking target 07-generator.
Success!
Got: Hello World!
```

## Hints
- Meson documentation about generators: http://mesonbuild.com/Generating-sources.html#using-generator
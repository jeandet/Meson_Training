# Wrap

## Introduction
This project does exactly the same thing that previous one, but instead of using curl it uses [cpr](http://whoshuu.github.io/cpr/) a C++ wrapper to curl. 
In this example **cpr** isn't installed on the machine, we will rely on Meson to automatically fetch **cpr** source code to build it with our example.

## Exercise 

Build an executable called **04-wrap**, you must use WrapDB to get **cpr**.

## Expected output 

```
./check.xsh 
The Meson build system
Version: 0.45.1
Source dir: /home/jeandet/Documents/prog/Meson_Training/04-Wrap
Build dir: /home/jeandet/Documents/prog/Meson_Training/04-Wrap/build
Build type: native build
Project name: 04-wrap
Native C++ compiler: ccache c++ (gcc 8.0.1 "c++ (GCC) 8.0.1 20180324 (Red Hat 8.0.1-0.20)")
Build machine cpu family: x86_64
Build machine cpu: x86_64
Found pkg-config: /usr/bin/pkg-config (1.4.2)
Downloading cpr from https://github.com/whoshuu/cpr/archive/1.3.0.zip
Downloading file of unknown size.
Downloading patch from https://wrapdb.mesonbuild.com/v1/projects/cpr/1.3.0/1/get_zip
Download size: 607
Downloading: ..........

Executing subproject cpr.

Project name: cpr
Native C++ compiler: ccache c++ (gcc 8.0.1 "c++ (GCC) 8.0.1 20180324 (Red Hat 8.0.1-0.20)")
Native dependency libcurl found: YES 7.59.0
Dependency threads found: YES
Build targets in project: 1

Subproject cpr finished.
Dependency cpr from subproject subprojects/cpr found: YES
Build targets in project: 2
Found ninja-1.8.2 at /usr/bin/ninja
[17/17] Linking target 04-wrap.
Got: <!doctype html>
<html>
<head>
    <title>Example Domain</title>

    <meta charset="utf-8" />
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style type="text/css">
    body {
        background-color: #f0f0f2;
        margin: 0;
        padding: 0;
        font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
        
    }
    div {
        width: 600px;
        margin: 5em auto;
        padding: 50px;
        background-color: #fff;
        border-radius: 1em;
    }
    a:link, a:visited {
        color: #38488f;
        text-decoration: none;
    }
    @media (max-width: 700px) {
        body {
            background-color: #fff;
        }
        div {
            width: auto;
            margin: 0 auto;
            border-radius: 0;
            padding: 1em;
        }
    }
    </style>    
</head>

<body>
<div>
    <h1>Example Domain</h1>
    <p>This domain is established to be used for illustrative examples in documents. You may use this
    domain in examples without prior coordination or asking for permission.</p>
    <p><a href="http://www.iana.org/domains/example">More information...</a></p>
</div>
</body>
</html>


Success!
```

## Hints
- Meson documentation about WrapDB: http://mesonbuild.com/Wrap-dependency-system-manual.html#toggling-between-distro-packages-and-embedded-source
- You might be interested in the command ```meson wrap install <package>```
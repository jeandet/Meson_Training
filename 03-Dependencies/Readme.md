# Dependencies

## Introduction
This project contains an example from CURL project. It contains only one source file **simple.c** which download welcome page from http://example.com and print its content to stdout.
To be able to build this project you need to link against libcurl and maybe add some compilations flags. Hopefully Meson has a way to do that for you, it will find the library and produce the necessary flags for you.


## Exercise 

build an executable called **03-dependencies**, you must not set any build flag manually. The Meson file might only need 3 lines.

## Expected output 

```
./check.xsh 
The Meson build system
Version: 0.45.1
Source dir: /home/jeandet/Documents/prog/Meson_Training/03-Dependencies
Build dir: /home/jeandet/Documents/prog/Meson_Training/03-Dependencies/build
Build type: native build
Project name: 03-Dependencies
Native C compiler: ccache cc (gcc 8.0.1 "cc (GCC) 8.0.1 20180324 (Red Hat 8.0.1-0.20)")
Build machine cpu family: x86_64
Build machine cpu: x86_64
Found pkg-config: /usr/bin/pkg-config (1.4.2)
Native dependency libcurl found: YES 7.59.0
Build targets in project: 1
Found ninja-1.8.2 at /usr/bin/ninja
[2/2] Linking target 03-dependecies.
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
Meson documentation about dependencies: http://mesonbuild.com/Dependencies.html#dependencies

#!/bin/env python


import sys
import os

if len(sys.argv) > 2:
    print(sys.argv[1])
    if os.path.exists(sys.argv[1]):
        with open(sys.argv[1], 'r') as input_file, open(sys.argv[2], 'w') as output_file:
            content = input_file.read()
            output_file.write(content.format(message="Hello World!\\n"))

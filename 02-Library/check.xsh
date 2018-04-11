#!/bin/xonsh

rm -rf ./build

try:
  meson . build
except:
  print("Meson failed")

try:
  cd build
  ninja
except:
  print("Failed to build")

try:
  import ctypes
  mylib = ctypes.CDLL('./lib02-library.so')
  result = mylib.myfunction()
  if result == 0xABCD:
    print("Got: {output:X}".format(output=result))
    print("Success!")
  else:
    print("Can't get expected output")
except:
  print("can't load lib02-library.so")



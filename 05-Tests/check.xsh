#!/bin/xonsh


rm -rf build

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
  ninja test
except:
	print("Failed!")

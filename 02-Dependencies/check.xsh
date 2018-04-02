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
	result = $(./02-dependecies)
	if "<title>Example Domain</title>" in result :
		print("Success!")
		print("Got: {output}".format(output=result))
	else:
		print("Can't get expected output")
except:
	print("can't run 02-dependecies")

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
	result = $(./04-wrap)
	if "<title>Example Domain</title>" in result :
		print("Got: {output}".format(output=result))
		print("Success!")
	else:
		print("Can't get expected output")
except:
	print("can't run 04-wrap")

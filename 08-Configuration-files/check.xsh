#!/bin/xonsh

rm -rf build

expected = """SIZEOF_INT 4
HAVE_STRING_H
HAVE_MEMORY_H
HAVE_LIMITS_H
HAVE_SYSLOG_H
HAVE_MMAP"""

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
	result = $(./08-Configuration-files)
	if expected in result:
		print("Success!")
		print("Got: {output}".format(output=result))
	else:
		print("Can't get expected output")
except:
	print("can't run 08-Configuration-files")

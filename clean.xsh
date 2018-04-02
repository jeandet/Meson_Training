#!/bin/xonsh

import glob

folders = glob.glob('[0-9]*-*')
folders.sort()
for folder in folders:
	print("removing {folder}/build".format(folder=folder))
	rm -rf @(folder+'/build')

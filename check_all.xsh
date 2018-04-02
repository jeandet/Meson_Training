#!/bin/xonsh

import glob

folders = glob.glob('[0-9]*-*')
folders.sort()
for folder in folders:
	cd @(folder)
	./check.xsh
	cd ..

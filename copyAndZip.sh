#!/usr/bin/env python3

# A shell script to copy source directories into a destiny directory and then zip the destiny directory.
# Go to the directory containing the file
# Run command `chmod +x copyAndZip.sh` to execute. +x means to make script file executable.
# Finally run the script by command: './copyAndZip.sh foldername'

import sys
import shutil
import distutils.dir_util
from distutils.dir_util import copy_tree

name = sys.argv[1]

# Copy content of source folder to the destination folder 
src = "/home/nabila/me/Problem Setter/"+name+"/input"
dst = "/home/nabila/me/Problem Setter/"+name+"/testCases/input"
copy_tree(src, dst)

src = "/home/nabila/me/Problem Setter/"+name+"/output"
dst = "/home/nabila/me/Problem Setter/"+name+"/testCases/output"
copy_tree(src, dst)

# Zip the testCases directory
dir_name = "/home/nabila/me/Problem Setter/"+name+"/testCases"
output_filename = "/home/nabila/me/Problem Setter/"+name+"/testCases" 
shutil.make_archive(output_filename, 'zip', dir_name)

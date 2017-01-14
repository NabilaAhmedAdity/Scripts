#!/usr/bin/env python3

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

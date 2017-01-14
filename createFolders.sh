#!/usr/bin/env python3

# A shell script to create folders inside folder
# Go to the directory containing the file
# Run command `chmod +x createFolders.sh` to execute. +x means to make script file executable.
# Finally run the script by command: './createFolders.sh foldername'

import sys
import os

# Create a directory with the given foldername
name = sys.argv[1]
# Change the path name according to yours 
path = "/home/nabila/me/Problem Setter/"+name
os.mkdir(path)

# Inside the directory create three more folders: input, output, testCases
in_path = path+"/input"
os.mkdir(in_path)

out_path = path+"/output"
os.mkdir(out_path)

tc_path = path+"/testCases"
os.mkdir(tc_path)

# Inside the testCases directory create input and output folders
tc_path = path+"/testCases/input"
os.mkdir(tc_path)

tc_path = path+"/testCases/output"
os.mkdir(tc_path)

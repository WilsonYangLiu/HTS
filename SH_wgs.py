from __future__ import print_function

#!/usr/local/bin/python
# -*- coding: utf-8 -*-

############################################################
#  Copyright (c) 2016 Wei-Xin Liu
#  Program: *
#  Author: Wei-Xin Liu (lweixin316@gmail.com)
############################################################

import os, sys
from WGS import WGS_Lib 

def usage():
	print('''
usage: 
   [python] <PATH_of_YOUR_PROJEC> <ANALYSIS>.conf
		
argument:
   Work_DIR: Your working directory
   conf_File: configaration file

Example: 
   python SH_wgs.py E:\Work_Genomes\Client\example exam1.conf
''')
	sys.exit(1)

def process(Work_DIR, conf):
	WGS_Lib.mk_task()
	
	conf_Dict = WGS_Lib.parse_conf(conf = conf)
	fileInfo = WGS_Lib.work_flow(Work_DIR = Work_DIR, conf_Dict = conf_Dict)
	
	WGS_Lib.close_task()

if __name__ == '__main__':
	if len(sys.argv) != 3:
		usage()
	
	Work_DIR = sys.argv[1]
	os.chdir(Work_DIR)
	conf = sys.argv[2]
	
	process(Work_DIR = r'./', conf = conf)
	
	
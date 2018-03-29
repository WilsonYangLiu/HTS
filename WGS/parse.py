from __future__ import print_function

#!/usr/local/bin/python
# -*- coding: utf-8 -*-

############################################################
#  Program: parse_conf
#  Version: 0.1.1
#  Author: Wei-Xin Liu (lweixin316@gmail.com)
############################################################

import os, sys

def parse_conf(conf, *OpL, **OpD):
	'''	conf: configration file
	'''
	with open(conf, 'rb') as f:
		lines = [line.strip() for line in f if not line.startswith('#') ]
		lines = [line for line in lines if line != '']

	conf_Dict = {}
	for item in lines:
		if item.startswith('>'):
			prefix = item[1:]
			if prefix not in ['fq', 'bwa_mem', 'samtool_sort', 'samtool_merge', 'rmdup_uniAln', 'var_calling', 'vcf_filter']:
				print('''
[KEY ERROR] Currently only supported keys: fq, bwa_mem, samtool_sort, samtool_merge, rmdup_uniAln, var_calling, vcf_filter
---> {} found
'''.format(prefix))
				sys.exit(1)
			
		else:
			key, val = item.split('=')
			conf_Dict['_'.join([prefix, key] ) ] = val
			
	return(conf_Dict)
	
if __name__ == '__main__':
	os.chdir(r'E:\Work_Genomes')

	lines = parse_conf(r'./WGS.conf')
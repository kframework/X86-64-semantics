#!/usr/bin/python

import sys,getopt

filename = None
blocksize = 1024

opts,args = getopt.getopt(sys.argv[1:],'f:b:')
for o,a in opts:
	if o == '-f':
		filename = a
	if o == '-b':
		blocksize = a

offset = 0
with open(filename,"rb") as f:
	block = f.read(blocksize)
	str = ""
	for ch in block:
		str += hex(ord(ch))+" "
	print str

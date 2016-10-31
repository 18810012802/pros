# -*- coding: utf-8 -*-
import codecs
f=codecs.open("1.txt",'a+','utf-8')
print f.encoding
import io,os
print io.DEFAULT_BUFFER_SIZE
iter_f=iter(f)
print iter_f
lines=0
'''
for line in iter_f:
    lines+=1
    print line
print lines 
print f.tell()  
f.read(6)
f.seek(0,os.SEEK_END)
print f.tell()
f.seek(-10,os.SEEK_CUR)
print f.tell()
print f.fileno
print f.readlines()

'''
f.write(u'木刻')



f.close()

import os
fd=os.open('imook.txt',os.O_CREAT|os.O_RDWR)
n=os.write(fd,'imooc')
l=os.lseek(fd,0,os.SEEK_SET)
print l
str1=os.read(fd,5)
print os.access('imook.txt',os.W_OK)
print os.listdir('./')
os.close(fd)

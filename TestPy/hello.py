import re,os
from sre_parse import Pattern
f=open('1.txt','r+')
str1=f.read()

pa=re.compile(r'(imooc)',re.IGNORECASE)
ma=pa.match(str1)

print ma.groups()
print re.match(r'[A-Z]+[a-z]+','AEFSDs').group()
print re.match(r'[1-9][0-9]?','23d33d').group()
print re.match(r'\Aimooc[\w]{6,10}@(?P<mark>163|126)(?P=mark)+.com$','imooc2333hhd@126126.com').group()
print re.match(r'[1-9]?\d$|100','100').group()

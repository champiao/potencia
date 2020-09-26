#!/usr/bin/env python2
import commands
import os
from time import sleep
from tqdm import tqdm
IP = str(input("dois ultimos octetos do IP separados por '.': "))
equipamento = 'Huawei EG8145V5'
print('acessando '+equipamento+'\n')
for i in tqdm(range(100)):
	pass
	sleep(0.01)
print('\nCOLETANDO DADOS\n')
teste = commands.getoutput("/home/rassis/potHW.sh "+IP)
for i in tqdm(range(100)):
	pass
	sleep(0.01)
os.system('touch /tmp/resultado.txt')
arquivo = open('/tmp/resultado.txt', 'a')
arquivo.write(teste)
arquivo.close()
os.system('xclip -sel clip /tmp/resultado.txt')
os.system('rm -rf /tmp/resultado.txt')
print('\nSUCESSO\n')

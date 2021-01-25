#!/usr/bin/env python2
#Coding UTF-8
import commands
import os
from time import sleep
from tqdm import tqdm
def menu():
    print('Qual huawei esta tentando acessar?:(usar os numeros do menu) ')
    print('\n1- EG8145V5')
    print('\n2- HG8121')
    print('\n3- EG8245')
    modelo = int(input(': '))
    if modelo == 1:
        IP = str(input('dois ultimos do octetos do IP separados por ".": '))
        print('\nACESSANDO QUIPAMENTO E COLETANDO DADOS\n')
        resultado = commands.getoutput('/home/rassis/potHW.sh '+IP)
        for i in tqdm(range(100)):
        	pass
        	sleep(0.01)
        os.system('touch /tmp/resultado.txt')
        arquivo = open('/tmp/resultado.txt', 'a')
        arquivo.write(resultado)
        arquivo.close()
        os.system('xclip -sel clip /tmp/resultado.txt')
        os.system('rm -rf /tmp/resultado.txt')
#	print(resultado)
#	print('\nSucesso')
	modelo = int(4)
    if modelo == 2:
	IP = str(input('dois ultimos octetos do IP separados por ".": '))
	print('\nACESSANDO EQUIPAMENTO E COLETANDO DADOS\n')
	resultado = commands.getoutput('/home/rassis/potHW8120.sh '+IP)
	for i in tqdm(range(100)):
		pass
		sleep(0.01)
	os.system('touch /tmp/resultado.txt')
	arquivo = open('/tmp/resultado.txt', 'a')
	arquivo.write(resultado)
	arquivo.close()
	os.system('xclip -sel clip /tmp/resultado.txt')
	os.system('rm -rf /tmp/resultado.txt')
#	print(resultado)
#	print('\nsucesso')
	modelo = int(4)
    if modelo == 3:
	print('ainda nao temos suporte para este dispositivo')
	#IP = str(input('dois ultimos octetos do IP separados por ".": '))
	#print('\nACESSANDO EQUIPAMENTO E COLETANDO DADOS\n')
	exit()
    if modelo == 4:
	print('=============================================')
	print('======== DADOS COPIADOS PARA AREA DE ========')
	print('======== TRANSFERENCIA COM SUCESSO   ========')
	print('======== PRESS CTRL + V PARA COLAR   ========')
	print('=============================================')
menu();

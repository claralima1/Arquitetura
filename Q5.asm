.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
alg:
	addi $9, $0, 100 #numero de divisao
	div $8, $9 # pega o primeiro algarismo
	mflo $10 # guarda
	
	mfhi $11 #pega o restante e guarda
	addi $12, $0, 10 
	mul $11,$11, $12 #ajusta o número restante para centena
	div $11, $9 #divide por 100 para pegar o algarismo
	
	mflo $13 #guarda o algarismo
	
	mfhi $14 #guarda o restante
	mul $14, $14 $12 #ajusta o número restante para centena
	div $14, $9 #didivde para pegar o algarismo
	
	mflo $15 #guarda o algarismo
	
soma:
	add $16, $15, $13 # soma os algarismos
	add $16, $16, $10

imprimir:
	add $4, $0, $16 #guarda a soma no registrador4
	addi $2, $0, 1 #imprime a soma
	syscall
	
fim:
	addi $2, $0, 10
	syscall 
	
	
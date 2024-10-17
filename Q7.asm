.text
main:
	addi $2, $0, 5 #código para entrada
	syscall
	
	addi $8, $0, 10 #move do reg2 para o reg8
	div $2, $8 #faz a divisão 
	
	mflo $9 #move a parte inteira para o reg9
	add $4, $0, $9 #move para o reg4 para impressão
	addi $2, $0, 1 #Código para impressaõ de inteiros
	syscall
	
	addi $4, $0, '\n' #insere o cractere no reg4
	addi $2, $0, 11  #código para impressão de caractere
	syscall
	
	mfhi $10 #move a parte fracionária para reg10
	div $10, $8 #divide a parte fracionária por 10
	mflo $11 #move a parte inteira para o reg11
	add $4, $0, $11 #move para o reg4
	addi $2, $0, 1 #código para impressão
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11 #código para impressão de caractere
	syscall
	
	
	
.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
algarismos:
	addi $9, $0, 10
	div $8, $9
	mfhi $10 #Algarismo
	
	mflo $11
	div $11, $9
	mfhi $12 #Algarismo
	
	mflo $13
	div $13, $9
	mfhi $14 #Algarismo
	
	mflo $15
	div $15, $9
	mfhi $16 #Algarismo
	
imprimir:
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $14
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $16
	addi $2, $0, 1
	syscall
	
	

	
	
	
	
	
	
		
	
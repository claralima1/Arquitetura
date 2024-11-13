.text
main:
	addi $2, $0, 5
	syscall
	add $9, $0, $2 #referência
	addi $8, $0, 1 
	addi $2, $0, 5
	syscall
	add $10, $0, $2  
	addi $10, $10, 1 #quantidade
	
for:	beq $8, $10, fimfor
	mul $11, $8, $9
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	addi $8, $8, 1
	j for
	 
	
fimfor:
	addi $2, $0, 10
	syscall
.text
main:
	addi $8, $0, 1 #começar sempre de 1
	addi $9, $0, 3
	addi $10, $0, 11 #ir até um número a mais
	
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
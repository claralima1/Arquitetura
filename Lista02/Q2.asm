.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	srl $9, $8, 31
	beq $9, $0, positivo
	mul $11, $8, $8
	add $4, $0, $11
	j print
	
positivo:
	sll $10, $8, 1
	add $4, $0, $10

print: addi $2, $0, 1
	syscall 
	
fim:
	addi $2, $0, 10
	syscall
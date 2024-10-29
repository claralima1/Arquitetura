.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	sub $10, $8, $9
	srl $11, $10, 31
	bne $11, $0, maior
	add $4, $0, $8
	j print
maior:	
	add $4, $0, $9
print:
	addi $2, $0, 1
	syscall
fim:
	addi $2, $0, 10
	syscall
.text
main:
	addi $8, $0, 1
	addi $9, $0, 11
for:
	beq $8, $9, fim
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	addi $8, $8, 1
	
	j for
fim:
	addi $2, $0, 10
	syscall
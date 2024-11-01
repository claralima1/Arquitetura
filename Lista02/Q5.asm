.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	
	sll $11, $9, 1 #nota*peso2
	sll $12, $10, 1
	add $12, $12, $10 #nota*peso3
	add $13, $11, $12 
	add $13, $13, $8
	add $15, $0, 6
	div $13, $15
	mflo $13
	add $4, $0, $13
	addi $2, $0, 1
	syscall
	addi $4, $0, ' '
	add $2, $0, 11
	syscall
	add $14, $0, 60
	div $13, $14
	mflo $16
	bne $16, $0, aprovado
	syscall
	addi $4, $0, 'R'
	j print

aprovado:
	addi $4, $0 'A'
print:
	addi $2, $0, 11
	syscall
	

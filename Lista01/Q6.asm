.text
main:
	addi $2, $0, 5
	syscall
	
	addi $8, $0, $2
	addi $9, $0, 10
	
	div $8, $9
	mflo $10
	mfhi $11
	
	mul $12, $10, 
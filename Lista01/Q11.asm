.text
main:
	addi $2, $0, 5
	syscall
	
	addi $8, $0, 10
	div $2, $8
	
	mfhi $15
	mflo $16
	
	add $4, $0, $15
	addi $2, $0, 1
	syscall
	
	div $16, $8
	mfhi $17
	mflo $18
	
	add $4, $0, $17
	addi $2, $0, 1
	syscall
	
	div $18, $8
	mfhi $19
	
	add $4, $0, $19
	addi $2, $0, 1
	syscall
	

	

fim:
	addi $2, $0, 10
	syscall 
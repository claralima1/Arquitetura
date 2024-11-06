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
	
	addi $11, $0, 6
	
media:
	addi $12, $0, 3
	add $13, $8, $9
	add $13, $13, $10
	div $13, $12
	mflo $14
	mfhi $15
	
	slt $16, $15, $11 #se o resto for maior que 5 = 0
	beq $16, $0, arredonda #se o $16 for diferente de 0
	
	add $4, $0, $14
	addi $2, $0, 1
	syscall
	addi $4, $0, ','
	addi $2, $0, 11
	syscall
	add $4, $0, $15
	addi $2, $0, 1
	syscall
	j fim
	
arredonda:
	add $15, $15, $11
	add $14, $15, $14
	
	add $4, $0, $14
	addi $2, $0, 1
	syscall

fim:
	addi $2, $0, 10
	syscall
	
	
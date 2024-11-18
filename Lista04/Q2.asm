.text
mian:
	addi $2, $0, 5
	syscall
	add $4, $0, $2
	jal verif
	addi $2, $0, 1
	syscall
	j fim
verif:
	beq $4, $0, fim
	slt $8, $4, $0 # entrada < 0 (nagativo) 1\0
	beq $8, $0, positivo
	j negativo
	jr $31
positivo:
	addi $4, $0, 1
	jr $31
negativo:
	addi $4, $0, -1
	jr $31
fim:	
	addi $4, $0, 0
	addi $2, $0, 10
	syscall

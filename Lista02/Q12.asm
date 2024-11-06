.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 #nota1
	addi $2, $0, 5
	syscall
	add $9, $0, $2 #nota2
	addi $2, $0, 5
	syscall
	add $10, $0, $2 #faltas
	
media:
	sll $11, $8, 1 #peso1*nota1
	sll $12, $9, 1
	add $12, $12, $9 #peso2*nota2
	
	add $13, $0, 5
	add $14, $11, $12
	div $14, $13 #calculo da media
	mflo $15 #parte inteira  da média
	mfhi $16
	div $10, $13
	mflo $19 #quantidade de pontos perdidos
	mfhi $20
	slt $23, $10, $13
	beq $23, $0, perdeponto
	j print
	
perdeponto:
	add $18 $0, 10
	mul $21, $19,$18
	sub $15, $15, $21 
	
	
print:	
	add $4, $0, $15
	addi $2, $0, 1
	syscall
	add $4, $0, $16
	addi $2, $0, 1
	syscall
fim:
	addi $2, $0, 10
	syscall
	
	
	
	
.text
mian:	
	addi $7 $0, 0
	addi $2, $0, 5
	syscall
	add $5 $0, $2
	jal desenhalinha
	j fim

desenhalinha:
for:	
	addi $8, $0, '='
	beq $7, $5 saifunc
	add $4, $0, $8
	add $2, $0, 11
	syscall
	addi $7, $7, 1
	j for
	
saifunc: jr $31
fim:	
	addi $2, $0, 10
	syscall

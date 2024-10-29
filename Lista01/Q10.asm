#Faça um programa que leia um caractere minúsculo
#e imprima o seu equivalente maiúsculo.
#A = 65      a = 97    diff = 32

.text
main: addi $2, $0, 12  #serviço de leitura de caractere
      syscall         # chamada ao sistema operacional
      add $8, $0, $2  # passa do reg2 para o reg8
     
      addi $4, $8, -32 # reg8 +(-32)
 
      addi $2, $0, 11 #código de impressão de caractere
      syscall
     
      addi $2, $0, 10 #código para finalizar o programa
      syscall #chama o sistema
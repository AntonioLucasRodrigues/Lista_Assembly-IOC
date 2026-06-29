.data
msg_num:   .asciiz "Digite um numero: "
msg_par:   .asciiz "O numero eh PAR"
msg_impar: .asciiz "O numero eh IMPAR"

.text
.globl main
main:
    la $a0, msg_num
    li $v0, 4
    syscall
    
    li $v0, 5           # Lê número
    syscall
    move $t0, $v0
    
    li $t1, 2
    div $t0, $t1
    mfhi $t2            # Captura o resto da divisão por 2
    
    beq $t2, $zero, eh_par  # Se resto == 0, é par
    
    la $a0, msg_impar
    j fim_decisao
    
eh_par:
    la $a0, msg_par

fim_decisao:
    li $v0, 4           # Imprime string com o resultado
    syscall
    
    li $v0, 10
    syscall
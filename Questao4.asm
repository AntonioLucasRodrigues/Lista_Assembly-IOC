.data
msg1: .asciiz "Digite o primeiro fator: "
msg2: .asciiz "Digite o segundo fator: "
msg_res: .asciiz "Produto: "

.text
.globl main
main:
    la $a0, msg1
    li $v0, 4
    syscall
    
    li $v0, 5           # Lê o primeiro número
    syscall
    move $t0, $v0
    
    la $a0, msg2
    li $v0, 4
    syscall
    
    li $v0, 5           # Lê o segundo número
    syscall
    move $t1, $v0
    
    mul $t2, $t0, $t1   # Realiza a multiplicação
    
    la $a0, msg_res
    li $v0, 4
    syscall
    
    move $a0, $t2
    li $v0, 1           # Imprime o produto
    syscall
    
    li $v0, 10
    syscall
    
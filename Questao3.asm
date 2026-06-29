.data
msg_a: .asciiz "Digite o um numero A: "
msg_b: .asciiz "Digite o um numero B: "
msg_res: .asciiz "Resultado (A - B): "

.text
.globl main
main:
    la $a0, msg_a
    li $v0, 4
    syscall
    
    li $v0, 5           # Lê A
    syscall
    move $t0, $v0
    
    la $a0, msg_b
    li $v0, 4
    syscall
    
    li $v0, 5           # Lê B
    syscall
    move $t1, $v0
    
    sub $t2, $t0, $t1   # Subtrai B de A
    
    la $a0, msg_res
    li $v0, 4
    syscall
    
    move $a0, $t2
    li $v0, 1           # Imprime
    syscall
    
    li $v0, 10
    syscall
    
    
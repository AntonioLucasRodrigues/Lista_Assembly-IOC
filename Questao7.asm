.data
msg1: .asciiz "Digite o primeiro numero: "
msg2: .asciiz "Digite o segundo numero: "
msg_maior: .asciiz "O maior numero eh: "

.text
.globl main
main:
    la $a0, msg1
    li $v0, 4
    syscall
    li $v0, 5
    syscall
    move $t0, $v0
    
    la $a0, msg2
    li $v0, 4
    syscall
    li $v0, 5
    syscall
    move $t1, $v0
    
    la $a0, msg_maior
    li $v0, 4
    syscall
    
    bgt $t0, $t1, print_t0  # UC: Se $t0 > $t1, desvia
    move $a0, $t1           # Se não, $t1 é o maior
    j print_result
    
print_t0:
    move $a0, $t0           # $t0 é o maior
    
print_result:
    li $v0, 1               # Imprime o maior número
    syscall
    
    li $v0, 10
    syscall
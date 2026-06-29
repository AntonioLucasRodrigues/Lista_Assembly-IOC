.data
msg_div: .asciiz "Digite o dividendo: "
msg_dvs: .asciiz "Digite o divisor: "
str_quoc: .asciiz "Quociente: "
str_rest: .asciiz "\nResto: "

.text
.globl main
main:
    la $a0, msg_div
    li $v0, 4
    syscall
    
    li $v0, 5           # Lê dividendo
    syscall
    move $t0, $v0
    
    la $a0, msg_dvs
    li $v0, 4
    syscall
    
    li $v0, 5           # Lê divisor
    syscall
    move $t1, $v0
    
    div $t0, $t1        # Realiza a divisão
    mflo $t2            # Move o quociente para $t2
    mfhi $t3            # Move o resto para $t3
    
    la $a0, str_quoc
    li $v0, 4
    syscall
    
    move $a0, $t2
    li $v0, 1           # Imprime o quociente
    syscall
    
    la $a0, str_rest
    li $v0, 4
    syscall
    
    move $a0, $t3
    li $v0, 1           # Imprime o resto
    syscall
    
    li $v0, 10
    syscall
    
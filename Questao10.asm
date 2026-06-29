.data
msg_n: .asciiz "Digite o valor de N: "
msg_res: .asciiz "Soma total: "

.text
.globl main
main:
    la $a0, msg_n
    li $v0, 4
    syscall
    li $v0, 5
    syscall
    move $t0, $v0           # Guarda N
    
    li $t1, 1               # Contador
    li $t2, 0               # Acumulador de soma
    
loop_soma:
    bgt $t1, $t0, fim_soma  # UC: Condição de parada (Contador > N)
    add $t2, $t2, $t1       # ULA: Acumula a soma
    addi $t1, $t1, 1        # Incrementa contador
    j loop_soma
    
fim_soma:
    la $a0, msg_res
    li $v0, 4
    syscall
    
    move $a0, $t2
    li $v0, 1               # Imprime soma final
    syscall
    
    li $v0, 10
    syscall
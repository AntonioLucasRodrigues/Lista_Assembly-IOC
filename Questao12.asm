.data
msg_fat: .asciiz "Digite um numero: "
msg_res: .asciiz "Fatorial: "

.text
.globl main
main:
    la $a0, msg_fat
    li $v0, 4
    syscall
    li $v0, 5
    syscall
    move $t0, $v0           # N
    
    li $t1, 1               # Acumulador do fatorial (inicia em 1)
    
loop_fat:
    blez $t0, fim_fat       # UC: Sai se N <= 0
    mul $t1, $t1, $t0       # ULA: Multiplica Acumulador por N
    addi $t0, $t0, -1       # ULA: Decrementa N
    j loop_fat
    
fim_fat:
    la $a0, msg_res
    li $v0, 4
    syscall
    
    move $a0, $t1
    li $v0, 1               # Imprime Fatorial
    syscall
    
    li $v0, 10
    syscall
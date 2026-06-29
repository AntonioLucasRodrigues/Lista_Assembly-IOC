.data
msg_fibo: .asciiz "Quantidade de termos (N): "
espaco: .asciiz " "

.text
.globl main
main:
    la $a0, msg_fibo
    li $v0, 4
    syscall
    li $v0, 5
    syscall
    move $t0, $v0           # N termos
    
    li $t1, 0               # Termo 1
    li $t2, 1               # Termo 2
    li $t3, 0               # Contador
    
loop_fibo:
    beq $t3, $t0, fim_fibo  # Para quando processar N termos
    
    move $a0, $t1
    li $v0, 1
    syscall
    
    la $a0, espaco
    li $v0, 4
    syscall
    
    add $t4, $t1, $t2       # Próximo = T1 + T2
    move $t1, $t2           # Avança T1
    move $t2, $t4           # Avança T2
    
    addi $t3, $t3, 1        # Incrementa contador
    j loop_fibo
    
fim_fibo:
    li $v0, 10
    syscall
    
.data
espaco: .asciiz " "

.text
.globl main
main:
    li $t0, 1               # Contador = 1
    li $t1, 11              # Limite de parada = 11
    
loop_cont:
    beq $t0, $t1, fim_loop  # Sai do loop se Contador atingiu o limite
    
    move $a0, $t0
    li $v0, 1               # Imprime o contador atual
    syscall
    
    la $a0, espaco
    li $v0, 4               # Imprime espaço
    syscall
    
    addi $t0, $t0, 1        # Incrementa contador
    j loop_cont             # Reinicia laço
    
fim_loop:
    li $v0, 10
    syscall
    
    
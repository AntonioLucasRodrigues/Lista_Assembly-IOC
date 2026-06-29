.data
msg_base: .asciiz "Digite o numero para a tabuada: "
quebra: .asciiz "\n"

.text
.globl main
main:
    la $a0, msg_base
    li $v0, 4
    syscall
    li $v0, 5
    syscall
    move $t0, $v0           # Base da tabuada
    
    li $t1, 1               # Multiplicador (1 a 10)
    li $t2, 11              # Limite
    
loop_tabuada:
    beq $t1, $t2, fim_tab   # Fim do laço no 11
    mul $t3, $t0, $t1       # ULA: Multiplica
    
    move $a0, $t3
    li $v0, 1               # Imprime resultado
    syscall
    
    la $a0, quebra
    li $v0, 4
    syscall
    
    addi $t1, $t1, 1        # Próximo multiplicador
    j loop_tabuada
    
fim_tab:
    li $v0, 10
    syscall
    
.data
vetor:  .word 5, 10, 15, 20, 25  # Array na memória (4 bytes cada)
espaco: .asciiz " "

.text
.globl main
main:
    la $t0, vetor           # Carrega endereço base
    li $t1, 0               # Contador
    li $t2, 5               # Tamanho
    
loop_vetor:
    beq $t1, $t2, fim_vetor
    
    lw $a0, 0($t0)          # Acesso à memória: Lê a "word" do índice atual
    li $v0, 1
    syscall
    
    la $a0, espaco
    li $v0, 4
    syscall
    
    addi $t0, $t0, 4        # Avança ponteiro físico na RAM em 4 bytes
    addi $t1, $t1, 1        # Incrementa iterador lógico
    j loop_vetor
    
fim_vetor:
    li $v0, 10
    syscall
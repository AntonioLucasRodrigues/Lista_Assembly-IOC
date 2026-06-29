.data
vetor: .word 5, 10, 15, 20, 25
msg_soma: .asciiz "Soma do vetor: "

.text
.globl main
main:
    la $t0, vetor
    li $t1, 0               # Contador
    li $t2, 5               # Tamanho
    li $t3, 0               # Acumulador da soma
    
loop_soma_vet:
    beq $t1, $t2, fim_soma_vet
    
    lw $t4, 0($t0)          # Busca o valor na memória
    add $t3, $t3, $t4       # ULA: Acumula o valor lido
    
    addi $t0, $t0, 4        # Avança endereço de memória
    addi $t1, $t1, 1
    j loop_soma_vet
    
fim_soma_vet:
    la $a0, msg_soma
    li $v0, 4
    syscall
    
    move $a0, $t3
    li $v0, 1               # Imprime soma total
    syscall
    
    li $v0, 10
    syscall
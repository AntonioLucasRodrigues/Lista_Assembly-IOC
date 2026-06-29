.data
vetor:      .space 20               # Aloca 20 bytes vazios na memória 
msg_input:  .asciiz "Digite um numero para o vetor: "
msg_maior:  .asciiz "Maior elemento: "

.text
.globl main
main:
  
    la $t0, vetor           # Carrega endereço base do array vazio
    li $t1, 0               # Contador
    li $t2, 5               # Tamanho limite (5 números)
    
loop_leitura:
    beq $t1, $t2, fim_leitura
    
    la $a0, msg_input
    li $v0, 4               # Imprime mensagem de input
    syscall
    
    li $v0, 5               # Lê o número digitado
    syscall
    
    sw $v0, 0($t0)          # Acesso à memória: Salva (Store Word) o número lido na RAM
    
    addi $t0, $t0, 4        # Avança o ponteiro da memória em 4 bytes
    addi $t1, $t1, 1        # Incrementa o iterador
    j loop_leitura
    
fim_leitura:

    
    la $t0, vetor           # Retorna o ponteiro para o início do vetor
    lw $t3, 0($t0)          # Inicia assumindo o índice [0] como o maior atual
    
    li $t1, 1               # Inicia laço pelo índice [1]
    li $t2, 5               
    addi $t0, $t0, 4        # Avança ponteiro para o índice [1]
    
loop_maior:
    beq $t1, $t2, fim_maior
    
    lw $t4, 0($t0)          # Lê próximo elemento da memória
    ble $t4, $t3, continua  # Ignora se o elemento lido for Menor ou Igual ao maior atual
    move $t3, $t4           # Atualiza o maior valor
    
continua:
    addi $t0, $t0, 4        # Avança ponteiro
    addi $t1, $t1, 1
    j loop_maior
    
fim_maior:
    la $a0, msg_maior
    li $v0, 4
    syscall
    
    move $a0, $t3
    li $v0, 1               # Imprime o maior
    syscall
    
    li $v0, 10
    syscall
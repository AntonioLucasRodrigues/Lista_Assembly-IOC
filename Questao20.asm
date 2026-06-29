.data
msg_recur: .asciiz "Calculo de 5! (Recursivo): "

.text
.globl main
main:
    li $a0, 5               # Argumento (5)
    jal fatorial            # Gatilho inicial da recursão
    move $t0, $v0           # Coleta do resultado acumulado da cascata
    
    la $a0, msg_recur       
    li $v0, 4               
    syscall                 
    
    move $a0, $t0           
    li $v0, 1               
    syscall                 
    
    li $v0, 10              
    syscall

fatorial:
    
    addi $sp, $sp, -8       # Abre 8 bytes por ciclo (Para o Endereço de Retorno + Dado Local)
    sw $ra, 4($sp)          # Empilha trilha de retorno desta camada de abstração
    sw $a0, 0($sp)          # Empilha o N atual (ex: 5, depois 4...)
    
    
    slti $t0, $a0, 2        # Set on Less Than: Checa se N < 2
    beq $t0, $zero, recursao # Se a flag for 0 (N>=2), segue recursão
    
    
    li $v0, 1               # Caso extremo alcançado: 1! = 1
    addi $sp, $sp, 8        # Fecha pilha local prematuramente
    jr $ra                  # Inicia cascata invertida de "desempilhamento"

recursao:
    addi $a0, $a0, -1       # Manipula argumento para chamada-filha (N = N - 1)
    jal fatorial            # Recursão aninhada
    
    
    lw $a0, 0($sp)          # Restaura apenas o N específico da camada que está sendo fechada
    lw $ra, 4($sp)          # Restaura para onde a camada atual precisa reportar sua volta
    addi $sp, $sp, 8        # Libera RAM da Pilha em definitivo
    
    mul $v0, $a0, $v0       # ULA multiplica N da camada * Resposta da camada-filha
    jr $ra                  # Salta um nível para cima devolvendo a resposta calculada
    
    
    
    
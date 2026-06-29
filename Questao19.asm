.data
msg_stack: .asciiz "Valor restaurado de $s0: "

.text
.globl main
main:
    li $s0, 999             # Dado crítico da Main. A função não deve destruí-lo.
    jal preserva_reg        # Chamada da sub-rotina
    
    la $a0, msg_stack       
    li $v0, 4               
    syscall                 
    
    move $a0, $s0           # Imprime $s0 (Se a pilha funcionou, DEVE imprimir 999)
    li $v0, 1               
    syscall                 
    
    li $v0, 10              
    syscall

# --- DECLARAÇÃO DE FUNÇÃO ---
preserva_reg:
    # Prólogo
    addi $sp, $sp, -4       # Expande a malha da Pilha para baixo (abre 4 bytes)
    sw $s0, 0($sp)          # Store Word: Empurra o dado 999 para dentro da Pilha
    
    # Processamento corrompendo registrador
    li $s0, 42              # A função pode sobrescrever livremente $s0 pois ele está salvo
    
    # Epílogo
    lw $s0, 0($sp)          # Load Word: Resgata o 999 da Pilha e injeta de volta em $s0
    addi $sp, $sp, 4        # Contrai a malha da Pilha fechando a alocação
    jr $ra                  # Retorna
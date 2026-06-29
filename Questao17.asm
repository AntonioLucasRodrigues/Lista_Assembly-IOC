.data
vetor:      .space 20               #  buffer para 5 inteiros
msg_input:  .asciiz "Digite numero: "
msg_pares:  .asciiz "Quantidade de pares: "

.text
.globl main
main:
    
    la $t0, vetor           
    li $t1, 0               
    li $t2, 5               
    
loop_leitura:
    beq $t1, $t2, preenchido
    
    la $a0, msg_input       
    li $v0, 4               
    syscall                 
    li $v0, 5               
    syscall                 
    
    sw $v0, 0($t0)       
    
    addi $t0, $t0, 4        
    addi $t1, $t1, 1        
    j loop_leitura          
    
preenchido:
  
    la $t0, vetor           # Reseta cursor
    li $t1, 0               # Iterador
    li $t2, 5               # Limite
    li $t3, 0               # Contador isolado de pares encontrados
    li $t5, 2               # Módulo divisor constante
    
loop_pares:
    beq $t1, $t2, fim_pares 
    
    lw $t4, 0($t0)          
    div $t4, $t5            # ULA computa divisão binária
    mfhi $t6                # Resgata o resto da matriz HI
    
    bne $t6, $zero, prox    # Se o resto divergir de 0, pula a contagem
    addi $t3, $t3, 1        # Se for par, adiciona +1 ao buffer $t3
    
prox:
    addi $t0, $t0, 4        
    addi $t1, $t1, 1        
    j loop_pares            
    
fim_pares:
    la $a0, msg_pares       
    li $v0, 4               
    syscall                 
    
    move $a0, $t3           
    li $v0, 1               
    syscall                 
    
    li $v0, 10              
    syscall
    
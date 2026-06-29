.data
msg_a:      .asciiz "Digite o valor de A: "
msg_b:      .asciiz "Digite o valor de B: "
msg_funcao: .asciiz "Resultado da funcao somar(a,b): "

.text
.globl main
main:
    
    la $a0, msg_a           # Solicita o parâmetro A
    li $v0, 4               
    syscall                 
    li $v0, 5               # Lê A
    syscall                 
    move $t0, $v0           # Guarda A temporariamente em $t0 (para não ser sobrescrito)
    
    la $a0, msg_b           # Solicita o parâmetro B
    li $v0, 4               
    syscall                 
    li $v0, 5               # Lê B
    syscall                 
    move $t1, $v0           # Guarda B temporariamente em $t1
    
    move $a0, $t0           # Configura parâmetro A no registrador ditado pela ABI ($a0)
    move $a1, $t1           # Configura parâmetro B no registrador ditado pela ABI ($a1)
    
    jal somar               # Jump and Link: Desvia para a função e salva a trilha de volta em $ra
    
    move $t2, $v0           # Salva o valor retornado pela função ($v0) em $t2 temporariamente
    
    
    la $a0, msg_funcao      
    li $v0, 4               
    syscall                 
    
    move $a0, $t2           # Move o resultado final calculado para impressão
    li $v0, 1               
    syscall                 
    
    li $v0, 10              # Encerra execução principal
    syscall

somar:
    add $v0, $a0, $a1       # ULA processa parâmetros e aloca em $v0 conforme convenção
    jr $ra                  # Jump Register: Retorna o PC (Program Counter) para a Main
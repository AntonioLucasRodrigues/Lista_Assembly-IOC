.data    
    msg: .asciiz "Resultado: 20+10 = "

.text
.globl main
main:
    
    li $t0, 20      # $t0 = 20
    li $t1, 10      # $t1 = 10
    
    
    add $t2, $t0, $t1 # $t2 recebe soma de t0 + t1
    
    
    li $v0, 4       # Código 4 no $v0 significa "Imprimir String"
    la $a0, msg     # Carrega o endereço da nossa mensagem no $a0
    syscall
    
    
    li $v0, 1       # Código 1 no $v0 significa "Imprimir Inteiro"
    move $a0, $t2   # Movemos o resultado da soma (30) para o $a0
    syscall
    
   
    li $v0, 10
    syscall
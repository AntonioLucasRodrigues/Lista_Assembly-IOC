.data
msg_num: .asciiz "Digite um numero: "
msg_res: .asciiz "O maior eh: "

.text
.globl main
main:
    # Leituras
    la $a0, msg_num
    li $v0, 4
    syscall
    li $v0, 5
    syscall
    move $t0, $v0       # N1
    
    la $a0, msg_num
    li $v0, 4
    syscall
    li $v0, 5
    syscall
    move $t1, $v0       # N2
    
    la $a0, msg_num
    li $v0, 4
    syscall
    li $v0, 5
    syscall
    move $t2, $v0       # N3
    
    move $t3, $t0       # Assume N1 como o maior inicial ($t3)
    
    bgt $t1, $t3, atualiza_maior_n2
    j checa_n3
    
atualiza_maior_n2:
    move $t3, $t1       # Atualiza maior com N2
    
checa_n3:
    bgt $t2, $t3, atualiza_maior_n3
    j print_maior
    
atualiza_maior_n3:
    move $t3, $t2       # Atualiza maior com N3
    
print_maior:
    la $a0, msg_res
    li $v0, 4
    syscall
    
    move $a0, $t3
    li $v0, 1           # Imprime o vencedor
    syscall
    
    li $v0, 10
    syscall
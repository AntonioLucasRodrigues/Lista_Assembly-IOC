.data
    msg1: .asciiz "Digite A: "
    msg2: .asciiz "Digite B: "
    msg3: .asciiz "Soma = "
 
.text
.globl main
main:
    li   $v0, 4
    la   $a0, msg1
    syscall
    li   $v0, 5
    syscall
    move $t0, $v0        # $t0 = A
 
    li   $v0, 4
    la   $a0, msg2
    syscall
    li   $v0, 5
    syscall
    move $t1, $v0        # $t1 = B
 
    add  $t2, $t0, $t1  # $t2 = A + B
 
    li   $v0, 4
    la   $a0, msg3
    syscall
    li   $v0, 1
    move $a0, $t2
    syscall
 
    li   $v0, 10
    syscall

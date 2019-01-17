
#mips1-1b.asm
.text

.globl main

main:

#loading t0 to t9 with 0xFFFFFFFF
li $t0, 0xFFFFFFFF 
li $t1, 0xFFFFFFFF
li $t2, 0xFFFFFFFF
li $t3, 0xFFFFFFFF
li $t4, 0xFFFFFFFF
li $t5, 0xFFFFFFFF
li $t6, 0xFFFFFFFF
li $t7, 0xFFFFFFFF
li $t8, 0xFFFFFFFF
li $t9, 0xFFFFFFFF

#loading s0 to s7 with 0xAAAAAAAA
li $s0, 0xAAAAAAAA
li $s1, 0xAAAAAAAA
li $s2, 0xAAAAAAAA
li $s3, 0xAAAAAAAA
li $s4, 0xAAAAAAAA
li $s5, 0xAAAAAAAA
li $s6, 0xAAAAAAAA
li $s7, 0xAAAAAAAA

li $v0, 10 
syscall

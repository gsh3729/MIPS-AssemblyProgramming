
#mips1-1b.asm
.text

.globl main

main:

#loading t0 to t9 with 0xFFFF
li $t0, 0xFFFF 
li $t1, 0xFFFF
li $t2, 0xFFFF
li $t3, 0xFFFF
li $t4, 0xFFFF
li $t5, 0xFFFF
li $t6, 0xFFFF
li $t7, 0xFFFF
li $t8, 0xFFFF
li $t9, 0xFFFF

#loading s0 to s7 with 0xAAAA
li $s0, 0xAAAA
li $s1, 0xAAAA
li $s2, 0xAAAA
li $s3, 0xAAAA
li $s4, 0xAAAA
li $s5, 0xAAAA
li $s6, 0xAAAA
li $s7, 0xAAAA

li $v0, 10 
syscall
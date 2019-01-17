
#mips1-2.asm
.data

str1: .ascii "123456789abcedef"
 str2: .ascii "123456789ABCDEF"

 .text 

 .globl main

 main:

 li $s0, 0x10010000
 li $s1, 0x10010010
 
 lb $t0, 0($s0)
 lb $t1, 1($s0)
 lb $t2, 2($s0)

 lb $t3, 13($s1)
 lb $t4, 14($s1)
 lb $t5, 15($s1)

 li $v0, 10
 syscall

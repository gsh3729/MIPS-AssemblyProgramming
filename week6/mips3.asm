
#mips3-2.asm
.data

str1: .ascii "123456789abcedef"
 str2: .ascii "123456789ABCDEF"

 .text 

 .globl main

 main:

 li $s2, 0x10010000
 li $s3, 0x10010010
 
 lb $t0, 0($s2)
 lb $t1, 1($s2)
 lb $t2, 2($s2)

 
 lhu $t6, 0($s2)
 lhu $t7, 2($s2)

 lw $t9, 12($s3)

 sb $t3, 15($s3)
 sb $t4, 14($s3)
 sb $t5, 13($s3)

 sh $t8, 14($s3)

 sw $s1, 12($s2)

 li $v0, 10
 syscall

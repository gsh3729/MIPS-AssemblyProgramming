
#Name: G Sriharsha, N V S Vishnu Kanth Reddy
#Roll: 111601005, 111601012
#mips6a.asm

.text
.globl main
main:
 la $t0,0x0eeffdd0
 
 srl $t1,$t0,20
 sll $t2,$t0,20
 srl $t2,$t2,24

 li $v0, 10
syscall

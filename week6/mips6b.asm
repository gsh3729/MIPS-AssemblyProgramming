
#Name: G Sriharsha, N V S Vishnu Kanth Reddy
#Roll: 111601005, 111601012
#mips6b.asm

.text
.globl main
main:
 la $t0,0x0eeffdd0
 
 sll $t2,$t0,12
 srl $t2,$t2,24


 li $v0, 10
syscall
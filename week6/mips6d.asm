
#Name: G Sriharsha, N V S Vishnu Kanth Reddy
#Roll: 111601005, 111601012
#mips6d.asm

.text
.globl main
main:
 la $t0,0x0eeffdd0
 la $t7,0x10000000
 srl $t7,$t7,28
 add $t4,$t7,$t0


 li $v0, 10
syscall
.end main

#Name: G Sriharsha, N V S Vishnu Kanth Reddy
#Roll: 111601005, 111601012
#mips7.asm

.text
.globl main
main:
 la $t0,1
 
 rol $t0,$t0,29
 ror $t0,$t0,16
 rol $t0,$t0,18
 ror $t0,$t0,18
 rol $t0,$t0,16

 li $v0, 10
syscall
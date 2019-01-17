
#Name: G Sriharsha, N V S Vishnu Kanth Reddy
#Roll: 111601005, 111601012
#mips6c.asm


.text
.globl main
main:

 la $t0,0x0eeffdd0
 la $t5,0xbb000000
 la $t6,0xcc000000
 la $t7,0x10000000

 sll $t2,$t0,12
 srl $t2,$t2,24

 srl $t7,$t7,28
 add $t4,$t7,$t0

 sll $t3,$t0,20
 srl $t3,$t3,8
 add $t3,$t6,$t3
 
 srl $t3,$t3,8
 add $t3,$t3,$t5
 srl $t3,$t3,4


 li $v0, 10
syscall
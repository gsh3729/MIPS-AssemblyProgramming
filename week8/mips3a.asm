
#Name: G Sriharsha, N V S Vishnu Kanth Reddy
#Roll: 111601005, 111601012
#mips3a.asm
#Program Description:
#Runing code snippet

.data
num1: .word 20
num2: .word 15

.text
.globl main
main:
	lw	$t1,num1
	lw	$t2,num2
	lw	$t1,num2
	add	$t3,$t1,$0
	add	$t4,$t1,$0

	li 	$v0, 10
	syscall
.end main

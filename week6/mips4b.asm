
#Name: G Sriharsha, N V S Vishnu Kanth Reddy
#Roll: 111601005, 111601012
#mips4a.asm

.data
	rollno 	: .word 4
	prompt1	: .ascii "My roll number is : "

.text 

.globl main

main:


lw $t0, rollno
la $t1, prompt1

li $v0, 4
la $a0, prompt1
#la $a0, $t1
syscall

li $v0, 1
lw $a0, rollno
#lw $a0, $t0
syscall

li $v0, 10
syscall
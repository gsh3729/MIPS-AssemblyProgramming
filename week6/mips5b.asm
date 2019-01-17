
#Name: G Sriharsha, N V S Vishnu Kanth Reddy
#Roll: 111601005, 111601012
#mips5a.asm

.data
	prompt1	: .asciiz "\nMul :"
	prompt2 : .asciiz "\nDiv :"

.text 

.globl main

main:

#copying 8 in to registers
li $t2, 0x08
li $t3, 0x08

sll $t0, $t2, 2
srl $t1, $t3, 2

#showing prompt1
li $v0, 4
la $a0, prompt1
syscall

#printing mul
li $v0, 1
move $a0, $t0
syscall

#showing prompt2
li $v0, 4
la $a0, prompt2
syscall

#printing div
li $v0, 1
move $a0, $t1
syscall

li $v0, 10
syscall
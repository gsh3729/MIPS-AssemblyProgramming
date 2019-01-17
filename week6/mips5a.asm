
#Name: G Sriharsha, N V S Vishnu Kanth Reddy
#Roll: 111601005, 111601012
#mips5a.asm


.data
	name 	: .space 16
	prompt1	: .asciiz "Enter first number :" 
	prompt2	: .asciiz "Enter second number :" 
	prompt3	: .asciiz "Sum :"
	prompt4 : .asciiz "\nDifference :" 
	prompt5	: .asciiz "\nMul Hi:"
	prompt6	: .asciiz "\nMul Lo:"
	prompt7 : .asciiz "\nDiv Hi :"
	prompt8 : .asciiz "\nDiv Lo :" 

.text 

.globl main

main:

#showing prompt1
li $v0, 4
la $a0, prompt1
syscall

#reading first number
li $v0, 5 
syscall
move $t0, $v0

#showing prompt2
li $v0, 4
la $a0, prompt2
syscall

#reading second number
li $v0, 5 
syscall
move $t1, $v0

addu $t2, $t1, $t0
subu $t3, $t1, $t0
mult $t1, $t0
mflo $s3
mfhi $s4
div $t1, $t0
mflo $s5
mfhi $s6

#showing prompt3
li $v0, 4
la $a0, prompt3
syscall

#printing sum
li $v0, 1
move $a0, $t2
syscall

#showing prompt4
li $v0, 4
la $a0, prompt4
syscall

#printing diff
li $v0, 1
move $a0, $t3
syscall

#showing prompt5
li $v0, 4
la $a0, prompt5
syscall

#printing mul hi
li $v0, 1
la $a0, ($s4)
#mfhi $a0
syscall

#showing prompt6
li $v0, 4
la $a0, prompt6
syscall

#printing mul lo
li $v0, 1
la $a0, ($s3)
#mflo $a0
syscall



#showing prompt7
li $v0, 4
la $a0, prompt7
syscall

#printing div hi
li $v0, 1
#mfhi $a0
la $a0, ($s6)
syscall

#showing prompt8
li $v0, 4
la $a0, prompt8
syscall

#printing div lo
li $v0, 1
#mflo $a0
la $a0, ($s5)
syscall 

li $v0, 10
syscall
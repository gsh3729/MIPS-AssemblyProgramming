
#Name: G Sriharsha, N V S Vishnu Kanth Reddy
#Roll: 111601005, 111601012
#mips4a.asm

.data
	name 	: .space 16
#	rollno 	: .word 
	prompt1	: .asciiz "Please enter your name :" 
	prompt2	: .asciiz "Please enter your rollno :" 
	prompt3	: .asciiz "Your name is :"
	prompt4 : .asciiz "Your roll number is :"  
.text 

.globl main

main:

#showing prompt1
li $v0, 4
la $a0, prompt1
syscall

#reading name
li $v0, 8
la $a0, name 
li $a1, 17
syscall

#showing prompt2
li $v0, 4
la $a0, prompt2
syscall

#reading rollno
li $v0, 5
#lw $a0, rollno 
syscall

move $t0, $v0

#showing prompt3
li $v0, 4
la $a0, prompt3
syscall

#printing name
li $v0, 4
la $a0, name
syscall

#showing prompt4
li $v0, 4
la $a0, prompt4
syscall

#printing rollno
li $v0, 1
move $a0, $t0
syscall

li $v0, 10
syscall


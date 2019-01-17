
#Name: G Sriharsha, N V S Vishnu Kanth Reddy
#Roll: 111601005, 111601012
#mips4d.asm

.data
	prompt1	: .asciiz "Please enter floating point number :" 
	prompt2 : .asciiz "You have entered :"  
.text 

.globl main

main:

#showing prompt1
li $v0, 4
la $a0, prompt1
syscall

#reading floating point number
li $v0, 6
#li $f0, $FG0
syscall

mov.s $f1, $f0

#showing prompt2
li $v0, 4
la $a0, prompt2
syscall

#printing floating point number
li $v0, 2
mov.s $f12, $f1
syscall

li $v0, 10
syscall



#Name: G Sriharsha, N V S Vishnu Kanth Reddy
#Roll: 111601005, 111601012
#mips1.asm

.data
 	prompt1	: .asciiz "A is less than B\n"
 	prompt3	: .asciiz "A is less than B\n"
 	prompt0	: .asciiz "A is greater than B\n"
 	prompt2	: .asciiz "A is greater than B\n"


.text 

main:

	la $s0, 0xFFFFFFFF
	la $s1, 0x0000000F

	slt $t0, $s0, $s1
	sltu $t1, $s0, $s1 
    
    beq $t0,0,Print0
    beq $t0,1,Print1

    Print1:
    	li $v0, 4
    	la $a0, prompt1
		syscall
		j Exit1


    Print0:
    	li $v0, 4
    	la $a0, prompt0
		syscall
		j Exit1
	
	Exit1 :

	beq $t1,0,Print2
    beq $t1,1,Print3

    Print2:
    	li $v0, 4
    	la $a0, prompt2
		syscall
		j Exit2

	Print3:
    	li $v0, 4
    	la $a0, prompt3
		syscall
		j Exit2

    Exit2 :
	li $v0, 10
	syscall

.end main


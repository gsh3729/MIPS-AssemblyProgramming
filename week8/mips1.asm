
#Name: G Sriharsha, N V S Vishnu Kanth Reddy
#Roll: 111601005, 111601012
#mips5.asm
#Program Description:
#		     calculate x power y using functions

.data
str1: .asciiz "x power y is\n"

.text

FUN:			#Function to calculate x pow y
	li	$t1,0
	li	$v1,1
	loop:
		mul	$v1,$v1,$a0
		add	$t1,$t1,1
		beq	$t1,$a1,EXIT
		j	loop
	EXIT:
		jr	$ra
		

.globl main
main:
	li 	$a0, 2	
	li 	$a1, 4	
	jal FUN		#calling FUN

	li	$v0,4	#print result
	la	$a0,str1
	syscall	

	move 	$a0,$v1
	li 	$v0,1
	syscall
	
	li 	$v0, 10
	syscall
.end main

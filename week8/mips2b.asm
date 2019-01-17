
#Name: G Sriharsha, N V S Vishnu Kanth Reddy
#Roll: 111601005, 111601012
#mips2a.asm
#Program Description:
#program to compute the sum of squares of numbers from 1 to ‘n’
.data
str1: .asciiz "Total Sum is \n"

.text
.globl main
main:
	li	$t0,10	#number n
	li	$t2,0 
	li	$t3,0	#Storing the sum

	LOOP:
		
		add	$t3,$t3,$t1		#adding to total sum
		add	$t2,$t2,1		
		slt	$t4,$t0,$t2		#checking 
		beq	$t4,1,EXIT
		j	LOOP
		mul	$t1,$t2,$t2 	#squaring num

		
	EXIT:

	li	$v0,4	#print result
	la	$a0,str1
	syscall	

	li	$v0,1
	move $a0,$t3
	syscall

	li 	$v0, 10
	syscall
.end main

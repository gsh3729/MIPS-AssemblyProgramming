#			2_b.s
#Team Members:
#	      G.Badrinath Reddy
#	      K.Vamsi Pramod
#Program Description:
#		     program to compute the sum of squares of numbers from 1 to ‘n’
.data
str1: .asciiz "Final Sum is \n"

.text
.globl main
main:
	li	$t0,10	#n=$t0
	li	$t2,1
	li	$t3,0	#SUM

	LOOP:
		mul	$t1,$t2,$t2
		add	$t3,$t3,$t1
		add	$t2,$t2,1
		slt	$t4,$t0,$t2
		beq	$t4,1,EXIT
		j	LOOP

	EXIT:

	li	$v0,4	#print result
	la	$a0,str1
	syscall	

	li	$v0,1
	move	$a0,$t3
	syscall

	li 	$v0, 10
	syscall
.end main

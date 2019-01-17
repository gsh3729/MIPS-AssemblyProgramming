#			2_a.s
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
	li	$t0,10		#n=$t0

	add	$t1,$t0,1	#(n+1)

	mul	$t2,$t0,2	#(2n)
	add	$t2,$t2,1	#(2n+1)

	mul	$t3,$t0,$t1	# n*(n+1)
	mul	$t3,$t3,$t2	# n*n(n+1)*(2n+1)
	div	$t3,$t3,6	#(n*(n+1)*(2n+1)/6
	
	li	$v0,4	#print result
	la	$a0,str1
	syscall	

	li	$v0,1
	move	$a0,$t3
	syscall

	li 	$v0, 10
	syscall
.end main

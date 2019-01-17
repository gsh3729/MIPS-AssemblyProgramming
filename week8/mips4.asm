
#Name: G Sriharsha, N V S Vishnu Kanth Reddy
#Roll: 111601005, 111601012
#mips4.asm
#Program Description:
#2D array determinant calculation

.data
str1: .asciiz "Determinant is\n"
array: .word 4, 5
   	   .word 2, 6 

.text
getData:
	la	$t0,array
	mul	$t1,$a0,$a2	#(rowindex * col size)
	add	$t1,$t1,$a1 # + col index
	mul	$t1,$t1,$a3 # * sizeofdata
	add	$t1,$t1,$t0 # adding to base address
	lw	$v1,($t1)
	jr	$ra
	

.globl main
main:
	li	$a0,0	#row index
	li	$a1,0	#coloumn index
	li	$a2,2	#coloumn size
	li	$a3,4	#size of data

	jal getData		#get a
	move	$t2,$v1

	li	$a0,0
	li	$a1,1
	jal getData		#get b
	move	$t3,$v1

    li	$a0,1
	li	$a1,0
	jal getData		#get c
	move	$t4,$v1

	li	$a0,1
	li	$a1,1
	jal getData		#get d
	move	$t5,$v1

	mul	$t2,$t2,$t5
	mul	$t3,$t3,$t4

	li	$v0,4	#print result
	la	$a0,str1
	syscall	
	
	sub	$a0,$t2,$t3
	li	$v0,1
	syscall

	li 	$v0, 10
	syscall
.end main

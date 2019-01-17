
#Name: G Sriharsha, N V S Vishnu Kanth Reddy
#Roll: 111601005, 111601012
#mips4.asm

.data

	age: .word 8, 3, 6, 1, 7, 9

.text 

main:

	li $s0, 0
	li $s1, 1
	li $s2, 2
	li $s3, 3
	li $s4, 4
	li $s5, 5
	li $s6, 6
	li $s7, 7


	addi	$sp,$sp, -32
	sw	$s0,0($sp)
	sw	$s1,4($sp)
	sw	$s2,8($sp)
	sw	$s3,12($sp)
	sw	$s4,16($sp)
	sw	$s5,20($sp)
	sw	$s6,24($sp)
	sw	$s7,28($sp)

	addi $s0,$s0,1
	addi $s1,$s1,1
	addi $s2,$s2,1
	addi $s3,$s3,1
	addi $s4,$s4,1
	addi $s5,$s5,1
	addi $s6,$s6,1
	addi $s7,$s7,1
	
	lw	$t0,0($sp)
	lw	$t1,4($sp)
	lw	$t2,8($sp)
	lw	$t3,12($sp)
	lw	$t4,16($sp)
	lw	$t5,20($sp)
	lw	$t6,24($sp)
	lw	$t7,28($sp)

	add $t0,$t0,$s0
	add $t1,$t1,$s1
	add $t2,$t2,$s2
	add $t3,$t3,$s3
	add $t4,$t4,$s4
	add $t5,$t5,$s5
	add $t6,$t6,$s6
	add $t7,$t7,$s7


	li $v0, 10
	syscall

.end main

#Name: G Sriharsha, N V S Vishnu Kanth Reddy
#Roll: 111601005, 111601012
#mips2.asm

.data
	marks: .word 8, 3, 6, 1

.text 

main:

	la $t1, marks

	li $t0, 0
	lw $s0, 0($t1)
	lw $s1, 4($t1)
	lw $s2, 8($t1)
	lw $s3, 12($t1)


	loop:

		
		li $v0, 1
    	lw $t2, 0($t1)
    	move $a0, $t2
    	syscall

    	add $t1,$t1,4
    	addi $t0,$t0,4

    	beq $t0,16,Exit

    	j loop

	Exit :
	
	li $v0, 10
	syscall

.end main
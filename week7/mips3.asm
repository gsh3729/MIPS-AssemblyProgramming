
#Name: G Sriharsha, N V S Vishnu Kanth Reddy
#Roll: 111601005, 111601012
#mips3.asm

.data

	age: .word 8, 3, 6, 1, 7, 9

.text 

main:


	la $t2, age
	li $t0, 0
	li $t1, 0


	loop:

    	lw $t3, 0($t2)
    	add $t1, $t1, $t3
    	

    	add $t2,$t2,4
    	addi $t0,$t0,4

    	beq $t0,24,Exit

    	j loop

	Exit :







	li $v0, 10
	syscall

.end main
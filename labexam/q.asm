#Name: G Sriharsha
#Roll: 111601005
#q.asm

.data

othergas : .float 75.0,80.5,70.3,89.0,92.2,79.4,89.0,92.2,79.4,70,81,82.3,74.5
oxygen : .space 100

.text

.globl main
main:

la $t0, othergas
la $t1, oxygen
li $t2, 0
li $t3, 0

li.s $f0, 100.0
li.s $f1, 19.5
li.s $f2, 23.5
li $t6, 0
li $t7, 0xff

loop:
	
	li $v0, 6
	l.s $f4, 0($t0)
	syscall


	add $t0,$t0,4
	addi $t2,$t2,4

	sub.s $f4, $f0, $f4

	c.lt.s $f4, $f1
	bclt update

	

	c.gt.s $f4,$f2
	bc1t update

	next:
	
	sw $t7, 0(t1)
	add $t1,$t1,4
	addi $t3,$t3,4

	
	beq $t2,40,print

	j loop

update:
	sw $t6, 0(t1)
	add $t1,$t1,4
	addi $t3,$t3,4	
	j next

print:
li $t2, 0
la $t1, oxygen

loop2:
	
	li $v0, 1
	lw $t2, 0($t1)
	move $a0, $t2
	syscall

	addi $t2,$t2,4

	beq $t2,40,EXIT

EXIT:
	li $v0, 10
	syscall

.end main





	

















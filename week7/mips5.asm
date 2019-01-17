
#Name: G Sriharsha, N V S Vishnu Kanth Reddy
#Roll: 111601005, 111601012
#mips5.asm

.data

	sgpa: .float 9.1, 3.3, 7.7, 6.6
	newLine: .asciiz "\n"

.text 

main:

	li $t0, 0 #loop breaking
	la $t1, sgpa

	#Sum is stored in f0
	li.s $f0, 0.0
	li.s $f2, 1.0
	l.s $f4, ($t1) #min
	l.s $f5, ($t1) #max
	
	
	loop:

    	l.s $f1, ($t1)
    	add.s $f0, $f0, $f1
    	mul.s $f2, $f2, $f1


		c.lt.s $f1, $f4
		bc1t min

		

		next:
		c.lt.s $f5, $f1

		bc1t max

		

		now:
		
    	add $t1,$t1,4
    	addi $t0,$t0,4

    	beq $t0,16,Exit

    	j loop

    min:
		mov.s $f4, $f1
		j next
	max:
		mov.s $f5, $f1
		j now

	Exit :		



	#printing sum
	li $v0, 2
	mov.s $f12, $f0
	syscall

	#printing new line
	li $v0, 4
	la $a0, newLine
	syscall

	#printing mul
	li $v0, 2
	mov.s $f12, $f2
	syscall

	#printing new line
	li $v0, 4
	la $a0, newLine
	syscall

	mov.s $f3, $f0 
	#check for l.s
	li.s $f6, 4.0
	div.s $f3,$f3,$f6

	#printing avg
	li $v0, 2
	mov.s $f12, $f3
	syscall

	#printing new line
	li $v0, 4
	la $a0, newLine
	syscall

	#printing min
	li $v0, 2
	mov.s $f12, $f4
	syscall

	#printing new line
	li $v0, 4
	la $a0, newLine
	syscall

	#printing max
	li $v0, 2
	mov.s $f12, $f5
	syscall

	#printing new line
	li $v0, 4
	la $a0, newLine
	syscall

	li $v0, 10
	syscall

.end main

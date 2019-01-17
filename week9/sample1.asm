
#Name: G Sriharsha, N V S Vishnu Kanth Reddy
#Roll: 111601005, 111601012
#mips1.asm


.data
 	prompt1	: .asciiz"Enter the outside temperature\n"
 	prompt2	: .asciiz"Erroy array is \n"
 	newline : .asciiz"\n"
 	err 	: .space 100 


.text

.globl main
main:

 li $t0, 20           #Room temperature
 li $t1, 60 		  #count
 li $t2, 60			  #
 li $t4, 0			  #value after subtraction
 li $t6, 0			  #previous value
 la $t7, err
 li $t5, 0            #array size
 li $s1, 0
 la $s2, 0

 loop:

  beq $t2,$t1,Ask
  beq $t5,100,start
 next:
 	addi $t1,$t1,1
 	j loop
 
Ask:
	li $v0, 4         #showing prompt1
	la $a0, prompt1
	syscall

		
	li $v0, 5 		 #reading 
	syscall
	move $t3, $v0 


	sub $t4,$t3,$t0   
	beq $t4,$s1,start   #checking 20

	bne $t5,$s1,flag
	la $t6, ($t7)
	beq $t4,$t6,start  #checking prev value


	flag:
	add $t5,$t5,1

	sa $t4, ($t7)
	addi $t7,$t7,4


	li $t1, 0

	j next


start:

	li $v0, 4         #showing prompt2
	la $a0, prompt2
	syscall
	j print

print:
	
	beq $s1,$t5,Exit
	li $v0, 1 		 #printing 
	addi $s2,$s2,4
	la $a0, ($s2)
	syscall

	li $v0, 4         
	la $a0, newline
	syscall
	
	j print

Exit:

li $v0, 10
syscall
.end main
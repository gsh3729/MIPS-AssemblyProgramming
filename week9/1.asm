#Name: G Sriharsha, N V S Vishnu Kanth Reddy
#Roll: 111601005, 111601012
#1.asm


# program description: The program asks the user to input outside temperature at regular intervals of time. The program stops once outside 
# temperature is stabilized to 20 degrees i.e., it becomes equal to 20 for 3 consecutive times. It then displays the temperature difference of each # time from the starting to the end



.data
error_array: .space 100 #creating an empty array of 100 bytes
space: .asciiz"\n"
str1: .asciiz"Enter outside temperature: "
str2: .asciiz"The elements of error array are \n"

.text

.globl main
main:
la $t0, error_array #loading the starting address of error array into t0, t5
la $t5, error_array
li $t3, 0            #t3,t1 are initially loaded with 0
li $t1, 0 			 #t1 is used to count time


loop1:

	beq $t1, 60, loop#This line ensures that only after 60 time units it polls for outside temperature
	addi $t1,$t1,1	#incrementing t1
	
	j loop1

loop:
li $t1, 0		#loading t1 to zero again

li $v0, 4
la $a0, str1		#prompts user to input outside temperature
syscall

li $v0, 5
syscall 			#reading an integer(outside temperature)

sub $t2, $v0, 20	#storing the temperature difference into t2

sw $t2, 0($t0)		#storing temp diff into address contained in t0
addi $t0, $t0, 4	#incrementing t0 by 4 (size of an integer is 4 bytes)

beq $t2, 0, incr 	#if temp diff is 0 jumps to incr
li $t3,0			# resets t3 to zero if temp diff is not equal to zero
bne $t2, 0, loop1	#if temp diff is not zero, jumps to loop1


incr:			#t3 keeps track of no of times temp diff was zero consecutively for the last few times

addi $t3,$t3, 1		#increments t3 by 1
bne $t3, 3, loop1	#if t3 is not equal to 3 jumps to loop1

li $v0,4
la $a0, str2
syscall				#prints str2

print_values:
lw $a0, 0($t5)		#loading a0 with word present in address contained in t5
li $v0,1
syscall				#prints elements of error array

la $a0, space
li $v0, 4
syscall				# new line


addi $t5, $t5, 4	#increments t5 by 4
bne $t5, $t0, print_values		#exits the loop once t5 becomes equal to t0

 
li $v0,10
syscall			#exits the program
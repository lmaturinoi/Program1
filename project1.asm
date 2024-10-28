# CS 2640 Sec. 2
# 10/28/24
# Project 1: Getting Familiar with Assembly
# Goals:
# 1) Get 2 integers from user and print both numbers.
# 2) Perform arithmetic operations from user-given integers.
# 3) Print whether user inputs from first task are equal or not.

.data
prompt1: .asciiz "Enter your first integer: "
prompt2: .asciiz "Enter your second integer: "
firstInt: .asciiz "First Integer: "
secondInt: .asciiz "Second Integer: "
msgAdd: .asciiz "num1 + num2 = "
msgSub: .asciiz "num1 - num2 = "
msgMul: .asciiz "num1 * num2 = "
msgDiv: .asciiz "num1 / num2 = "
newline: .asciiz "\n"
equalNums: .asciiz "User inputs are the same."
diffNums: .asciiz "User inputs are different."

.text
main:
	# Prints prompt1
	li $v0, 4
	la $a0, prompt1
	syscall
	
	# Gets first integer
	li $v0, 5
	syscall
	move $s0, $v0
	
	# Prints prompt2
	li $v0, 4
	la $a0, prompt2
	syscall
	
	# Gets second integer
	li $v0, 5
	syscall
	move $s1, $v0
	
	# Prints first integer
	li $v0, 4
	la $a0, firstInt
	syscall
	
	li $v0, 1
	move $a0, $s0
	syscall
	
	# Newline
	li $v0, 4
	la $a0, newline
	syscall
	
	# Prints second integer
	li $v0, 4
	la $a0, secondInt
	syscall
	
	li $v0, 1
	move $a0, $s1
	syscall
	
	# Newline
	li $v0, 4
	la $a0, newline
	syscall
	
	# Performs all math equations 
	add $t1, $s0, $s1
	sub $t2, $s0, $s1
	mul $t3, $s0, $s1
	div $t4, $s0, $s1
	
	# Prints addition of user numbers
	li $v0, 4
	la $a0, msgAdd
	syscall
	
	li $v0, 1
	move $a0, $t1
	syscall
	
	# Newline
	li $v0, 4
	la $a0, newline
	syscall
	
	# Prints subtraction of user numbers
	li $v0, 4
	la $a0, msgSub
	syscall
	
	li $v0, 1
	move $a0, $t2
	syscall
	
	# Newline
	li $v0, 4
	la $a0, newline
	syscall
	
	# Prints multiplication of user numbers
	li $v0, 4
	la $a0, msgMul
	syscall
	
	li $v0, 1
	move $a0, $t3
	syscall
	
	# Newline
	li $v0, 4
	la $a0, newline
	syscall
	
	# Prints division of user numbers
	li $v0, 4
	la $a0, msgDiv
	syscall
	
	li $v0, 1
	move $a0, $t4
	syscall
	
	# Newline
	li $v0, 4
	la $a0, newline
	syscall
	
	beq $s0, $s1, equal
	bne $s0, $s1, diff
	
equal:
	# Prints message if numbers are the same
	li $v0, 4
	la $a0, equalNums
	syscall
	
	b exit
	
diff:
	# Prints message if numbers are different
	li $v0, 4
	la $a0, diffNums
	syscall

exit:
	
	# Exits program
	li $v0, 10
	syscall
	

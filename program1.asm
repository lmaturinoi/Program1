#Date: 11/03/2024
#Names: Lucia Maturino Iniguez and Roman Sailes
#Program 1: Getting Familiar with Assembly

.data
#Task 1
prompt1: .asciiz "Input integer 1: "
prompt2: .asciiz "Input integer 2: "
integer1: .asciiz "Integer 1: "
integer2: .asciiz "Integer 2: "
space: .asciiz "\n"
#Task 2
sum: .asciiz "Sum: "
difference: .asciiz "Difference: "
product: .asciiz "Product: "
quotient: .asciiz "Quotient: "
#Task 3
equal: .asciiz "User inputs are the same"
notEqual: .asciiz "User inputs are different"

.text
main:
	#Task 1: User Input and Output
	# 1)Get two integers from user
	# 2)Output integers
	
	#print out prompt1
	li $v0, 4
	la $a0, prompt1
	syscall
	
	#get first integer
	li $v0, 5
	syscall
	move $s0, $v0
	
	#print out prompt2
	li $v0, 4
	la $a0, prompt2
	syscall
	
	#get second integer
	li $v0, 5
	syscall
	move $s1, $v0
	
	#print
	li $v0, 4
	la $a0, space
	syscall
	
	#output first integer
	#print "Integer1"
	li $v0, 4
	la $a0, integer1
	syscall
	
	#print first integer
	li $v0, 1
	move $a0, $s0
	syscall
	
	#space
	li $v0, 4
	la $a0, space
	syscall
	
	#output second integer
	#print "Integer2"
	li $v0, 4
	la $a0, integer2
	syscall
	
	#print second integer
	li $v0, 1
	move $a0, $s1
	syscall
	
	#space
	li $v0, 4
	la $a0, space
	syscall
	syscall
	#End of Task 1
	
	#Task 2: Arithmetic Operation Practice
	# 1)Add two values
	# 2)Subtract two values
	# 3)Multiply two values
	# 4)Divide two values
	# 5)Output arithmetic results
	
	#Add
	#print sum
	li $v0, 4
	la $a0, sum
	syscall
	
	#add integer 1 and 2
	add $t0, $s0, $s1
	li $v0, 1
	move $a0, $t0
	syscall
	
	#space
	li $v0, 4
	la $a0, space
	syscall
	
	#Subtract
	#print difference
	li $v0, 4
	la $a0, difference
	syscall
	
	#subtract integer 1 and 2
	sub $t0, $s0, $s1
	li $v0, 1
	move $a0, $t0
	syscall
	
	#space
	li $v0, 4
	la $a0, space
	syscall
	
	#Multiply
	#print product
	li $v0, 4
	la $a0, product
	syscall
	
	#multiply integer 1 and 2
	mul $t0, $s0, $s1
	li $v0, 1
	move $a0,$t0
	syscall
	
	#space
	li $v0, 4
	la $a0, space
	syscall
	
	#Divide
	#print quotient
	li $v0, 4
	la $a0, quotient
	syscall
	
	#divide integer 1 and 2
	div $t0, $s0, $s1
	li $v0, 1
	move $a0, $t0
	syscall
	
	#space
	li $v0, 4
	la $a0, space
	syscall
	#End of Task 2
	
	#Task 3: Conditions
	# 1)Compare values
	# 2)Print inputs are the same if equal
	# 3)Print inputs are difference if not equal
	
	#compare values
	beq $s0, $s1, same
	bne $s0, $s1, different
	
	same:
		li $v0, 4
		la $a0, equal
		syscall
		
		#exit syscall
		li $v0, 10
		syscall
		
	different:
		li $v0, 4
		la $a0, notEqual
		syscall
		
		#exit syscall
		li $v0, 10
		syscall
	
	#End of Task 3
	

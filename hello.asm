# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	# TODO: Write your string definitions here
	string0: .asciiz "Enter an integer:\n"
	string1: .asciiz "Hello World 2023!\n"
	string2: .asciiz "The magic number is "
	string3: .asciiz "!!!\n"

#Text Area (i.e. instructions)
.text
main:

	#Print a line aksing for the input
	li $v0, 4
	la $a0, string0
	syscall

	#Get the input
	li $v0, 5
	syscall
	move $t0, $v0

	#Print output
	li $v0, 4
	la $a0, string1
	syscall

	la $a0, string2
	syscall

	li $v0, 1
	move $a0, $t0
	syscall

	li $v0, 4
	la $a0, string3
	syscall


exit:
	li $v0, 10
	syscall


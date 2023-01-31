# arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.text
main:

	# Get 3 inputs 
	li $v0, 5
	syscall
	move $t0, $v0

	li $v0, 5
	syscall
	move $t1, $v0

	li $v0, 5
	syscall
	move $t2, $v0

	#Perform operation: 64 * (a-b) + 100 * c
	sub $t3, $t0, $t1
	sll $t4, $t3, 6

	li $t5, 100
	mult $t2, $t5
	mflo $t6

	add $t7, $t4, $t6

	#Print answer which is in register t7

	li $v0, 1
	move $a0, $t7
	syscall


exit:
	li $v0, 10
	syscall


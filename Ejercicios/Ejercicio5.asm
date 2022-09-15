	.data
vector1: .word 6,0,8,9,0,0,34,0
total: .space 4
	
	.text
main: 	la $t2,vector1
	and $t3,$0,$t3
	and $t5,$0,$t5
 	li $t0,0 
 	li $t1,7

para: 	bgt $t0,$t1,finpara 
	lw $t4,0($t2)
 	seq $t3,$t4,0 
	addi $t2,$t2, 4
	addi $t0,$t0, 1
	add $t5,$t5,$t3
	j para 

finpara: sw $t5,total($0)
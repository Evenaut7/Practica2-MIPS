	.data
vector1: .word 6,7,8,9,10,-1,34,23
vector2: .space 4
	
	.text
main: 	la $t2,vector1
	and $t3,$0,$t3
 	li $t0,0 
 	li $t1,7 

para: 	bgt $t0,$t1,finpara 
	lw $t4,0($t2) 
 	add $t4,$t4,1
 	sw $t4,vector2($t3)
	addi $t3,$t3, 4 
	addi $t2,$t2, 4 
 	addi $t0,$t0, 1
	j para 

finpara: 

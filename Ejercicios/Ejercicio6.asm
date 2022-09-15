	.data
vector1: .word 6,56,8,5,2,9,6,7
rango1: .word 9
rango2: .word 5
res: 	.space 4
	
	.text
main: 	la $t2,vector1
 	lw $t6,rango1
 	lw $t7,rango2
 	li $t0,0 
 	li $t1,7
 	and $t8,$0,$t8

para: 	bgt $t0,$t1,finpara 
	lw $t4,0($t2)
	addi $t2,$t2, 4
	addi $t0,$t0, 1
	and $t3,$0,$t3
	and $t5,$0,$t5
	
	bge $t6,$t7,mayor
	
menor:	sle $t3,$t4,$t7 
	sge $t5,$t4,$t6 
	and $t5,$t5,$t3
	add $t8,$t8,$t5
	j para

mayor:	sge $t3,$t4,$t7 
	sle $t5,$t4,$t6 
	and $t5,$t5,$t3
	add $t8,$t8,$t5
	j para

finpara: sw $t8,res($0)
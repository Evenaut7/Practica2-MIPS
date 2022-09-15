	.data
dato1:	.word 1
dato2:	.word 10
dato3:	.word 50
dato4:	.word 70
dato5:	.word 34
res:	.space 1

	.text
main:	lw $t0,dato1($0) 	
	lw $t1,dato2($0) 
	lw $t2,dato3($0) 
	lw $t3,dato4($0) 
	lw $t4,dato5($0) 
	and $t5,$0,$t5
	and $t6,$0,$t6
	bge $t0,$t1,mayor
	
menor:	sle $t7,$t4,$t1 
	sge $t5,$t4,$t0 
	and $t5,$t5,$t7
	j sig

mayor:	sge $t7,$t4,$t1 
	sle $t5,$t4,$t0 
	and $t5,$t5,$t7
	
sig: 	bge $t2,$t3,mayor1
	
menor1:	sle $t8,$t4,$t3 
	sge $t6,$t4,$t2 
	and $t6,$t6,$t8
	j fin

mayor1:	sge $t8,$t4,$t3 
	sle $t6,$t4,$t2 
	and $t6,$t6,$t8
	
fin: 	or $t9,$t5,$t6
	sw $t9,res($0)
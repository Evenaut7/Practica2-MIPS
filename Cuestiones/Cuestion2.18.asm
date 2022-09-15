	.data
dato1: 	.word 10
dato2: 	.word 30
dato3: 	.word 20
res: 	.space 4
	
	.text
main: 	lw $t1,dato1($0) 
	lw $t2,dato2($0)
	lw $t3,dato3($0)

Si: 	blt $t3,$t1, sino
	bgt $t3,$t2, sino 
	
entonces: addi $t4,$0,1 
	j finsi 

sino: 	and $t4,$0,$0 

finsi: 	sw $t4,res($0) 
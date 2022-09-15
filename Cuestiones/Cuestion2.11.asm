	.data
dato1: 	.word 0
dato2: 	.word 0
res: 	.space 4

	.text
main: 	lw $t0,dato1($0)
	lw $t1,dato2($0) 
	and $t2,$t2,$0 

Si: 	ble $t1,$0,finsi 
	blt $t0,$0,finsi 

entonces: div $t0,$t1 
	mflo $t2 

finsi: 	add $t3,$t0,$t1 
	add $t2,$t3,$t2 
	sw $t2,res($0) 
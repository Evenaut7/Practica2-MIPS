	.data
dato1: 	.word 20
dato2: 	.word 20
res: 	.space 1

	.text
main: 	lw $t0,dato1($0) # cargar dato1 en t0
	lw $t1,dato2($0) # cargar dato2 en t1
	seq  $t2,$t0, $t1 # poner a 1 $t2 si t0=t1
	sb $t2,res($0) # almacenar $t2 en res

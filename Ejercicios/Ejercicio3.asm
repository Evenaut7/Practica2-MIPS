	.data
enteros: .byte 1,-4,-5,2 
	.space 1
bool:	

	.text 
main:	lb $t0, enteros($0)
	lb $t1, enteros+1($0)
	lb $t2, enteros+2($0)
	lb $t3, enteros+3($0)
	
	slt $t8,$t0,$0
	slt $t9,$t1,$0
	and $t9,$t8,$t9
	slt $t8,$t2,$0
	and $t9,$t8,$t9
	slt $t8,$t3,$0
	and $t9,$t8,$t9
	
	sb $t9, bool($0)
	
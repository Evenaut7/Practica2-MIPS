	.data
enteros: .byte 2,-4,-6
	.space 1
bool:	

	.text 
main:	lb $t0, enteros($0)
	lb $t1, enteros+1($0)
	lb $t2, enteros+2($0)
	
	sge $t3,$t0,$0
	sge $t4,$t1,$0
	sge $t5,$t2,$0
	
	sb $t3, bool($0)
	sb $t4, bool+1($0)
	sb $t5, bool+2($0)
	.data
vector: .byte 0,1,1,1,0
res:	.space 1

	.text 
main:	lb $t1, vector($0)
	lb $t2, vector+1($0)
	lb $t3, vector+2($0)
	lb $t4, vector+3($0)
	lb $t5, vector+4($0)
	
	and $t6, $t1, $t5
	or $t7, $t2, $t4
	or $t8, $t1, $t2
	and $t8, $t8, $t3

	sb $t1, res($0)
	sb $t2, res+1($0)
	sb $t3, res+2($0)





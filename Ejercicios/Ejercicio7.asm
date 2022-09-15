	.data
caracteres: .ascii "Cadena de caracteres"
caracter: .ascii "a"
	.align 2
total: 	.space 1
	
	.text
main: 	la $t0,caracteres
	lb $t1,caracter
	and $t5,$t5,$0
	
while:	lb $t2,0($t0)
	beq $t2,$0,fin
	addi $t0,$t0, 1
	seq $t4,$t1,$t2
	add $t5,$t5,$t4
	j while
		
fin:	add $t5,$t5,-1
	sb $t5,total($0)
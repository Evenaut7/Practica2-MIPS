	.data
tira1: 	.asciiz "hola"
tira2: 	.asciiz "adios"
	.align 2
n: 	.space 4
	.text

main: 	la $t0,tira1
	la $t1,tira2 
	andi $t4,$t4, 0 

mientras: lb $t2,0($t0)
	lb $t3,0($t1)
	beq $t2,$0,finmientras
	beq $t3,$0,finmientras
	addi $t4,$t4, 1 
	addi $t0,$t0, 1
	addi $t1,$t1, 1
	j mientras 
	
finmientras: sw $t4,n($0) 
.data
	
	#Déclaration des variables
	mess1: .asciiz "Entrez une longueur\n"
	mess2: .asciiz "\n Entrez une largeur"

.text
	
	#Affiche mess1
	li $v0, 4
	la $a0, mess1
	syscall
	
	#Rentre la longueur
	li $v0, 5
	syscall
	
	#Sauvegarder la longueur
	move $t0, $v0
	
	#Rentre la largeur
	li $v0, 5
	syscall
	
	#Sauvegarder la largeur
	move $t1, $v0
	
	#Multiplication de la longueur et de la largeur
	mul $t2,$t0,2
	mul $t3,$t1,2
	
	#Somme 
	add $t4,$t2,$t3
	
	#Affichage
	li $v0, 1
	add $a0,$zero,$t4
	syscall
	
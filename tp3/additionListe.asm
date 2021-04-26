/*
Ce programme additionne 20 nombres de 1 octet stocké à partir de l'emplacement $1000
*/
N		equ	20	; Compteur de la serie
		org	$1000	
array		dc.b	2,4,6,8,10,12,14,16,18,20
		dc.b	22,24,26,28,30,32,34,36,38,40
sum		ds.w	1
		org	$1500
		ldx	#array	; Place l'adresse de d�part dans la s�rie X
		movw	#0,sum	; Initialise sum a 0
		ldy	#N	; Initialise le compteur de boucle a N
loop	        ldab	1,x+	; Place un nombre dans B et deplace le pointeur
		sex	B,D	; etend avec signe le nombre sur 8-bits a 16 bits
		addd	sum	; additionne a sum
		std   	sum	; mise a jour de sum
		dbne	y, loop	; Passe seulement si tous les nombres ont ete additiones
		swi		; Retour au moniteur
		end
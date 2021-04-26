/*
Ce programme compte les nombres paires dans un tableau
*/
	org	$1000	
N	db	20	; le nombre d��l�ments 
evenN	ds.b	1	; le compteur d��l�ments paires 
	org	$1010	; le d�but du tableau 
array	fdb	133,1200,1390,1900,1881,3939,2010,4080,9801,4592 
	fdb	11,22,33,3333,3242,5435,8760,9800,2876,9601 
 
	org	$1500
	clr	evenN	;Clear le compteur de nombre paires
	ldx	#array	;Charger dans x l'adresse du d�but du tableau
	ldy	#N	;Charger dans Y l'adresse du nombre d'�l�ments
loop	ldd	2,x+	;Charger dans D une valeur du tableau et incr�menter X de 2
	lsrd		;D�caler les bits de D vers la droite
	bcs	next	;Si C = 1, il va a l'�tiquette next
	inc	evenN	;Incr�menter le compteur de nombre paires
next	dec	0,y	;D�cr�menter le nombre d'�l�ments restant a verifier
	bne	loop	;Aller a loop si le nombre d'�l�ments a verifier ne tombe pas a 0
	swi		;retour au moniteur
	
	
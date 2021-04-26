/*
Compter les nombres qu'ils sont en dessous de 16 dans une liste
*/
N	equ	20	;definir la longueur de la liste
	org	$1010
array	dc.b	3, 8, 19, 34, 87, 45, 67, 43, 90, 6   ;Definir la liste de nombre a traiter
	dc.b	11, 22, 33, 44, 55, 66, 77, 88, 99, 100
count	ds.w	1	;Reserver 2 octets pour stocker le compteur de nombre	
	org	$1500
	ldx	#array  ;charger dans X l'adresse du tableau de nombres	
	ldy	#N	;charger dans Y le nombre d'elements dans le tableau
loop	ldb	1,x+	;Charger dans B une valeur du tableau et incrementer x
	cmpb	#16	;Compare B a 16
	bge	next	;Si B >= 16, skipper l'incr�mentation
	inc	count	;Incr�menter le compteur de nombres
next	dbne	y, loop	;Recommencer tant que la fin de la liste n'a pas �t� atteint
	swi		;retour au moniteur

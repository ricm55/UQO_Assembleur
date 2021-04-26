/*
Ce programme effectue une boucle permettant de lire chaque élément dans
la liste dans l'accumulateur A
Version => Utilise l'adressage index� avec l'accumulateur B
*/
	org	$1500 ;D�finir l'adresse de d�part du programme
	ldx	#array ;Charger l'adresse du tableau dans X
	ldab	#0-1   ;Charger dans B la valeur -1
again	incb	       ;Incr�ment� B de 1
	ldaa	B,X    ;Charg� dans A la valeur � l'adresse du tableau + B
	bne	again  ;S'il n'y a pas de Z actif, retourne � l'�tiquette again
	swi	       ; Retour au moniteur
	org	$2000  ;D�finir l'adresse pour le stockage du tableau
array	fcb	1,2,3,4,5 ;Stock� le tableau dans la m�moire
	end            ;Finir le programme
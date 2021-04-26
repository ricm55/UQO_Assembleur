/*
Ce programme effectue une boucle permettant de lire chaque élément dans
la liste dans l'accumulateur A
Version => Utilise l'incrémentation du registre d'index
*/
;Version => incr�mente automatiquement le registre d'index
	org	$1500   ;D�finir l'adresse du d�but du programme
	ldx	#array-1 ;Charger dans X l'adresse du tableau -1
again	inx		 ;Incr�ment� X de 1
	ldaa	0,X	 ;Charger la valeur � l'adresse X dans A
	bne	again	 ;S'il n'y a pas de Z actif, retourne � l'�tiquette again
	swi		 ;Retour au moniteur
	org	$2000	 ;D�finir l'origine pour stock� le tableau
array	fcb	1,2,3,4,5;Stock� le tableau en m�moire
	end              ;Finir le programme
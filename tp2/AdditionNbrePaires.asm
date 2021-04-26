/*
Ce programme additionne une liste de nombres paires
*/
	org 	$1000  ;D�finir l'origine pour les constantes
sum	rmb	1      ;reserver un octet avec l'�tiquette sum
arcnt	rmb 	1      ;reserver un cotet avec l'�tiquette arcnt
	org 	$1500  ;D�finir l'origine pour le d�but du code
	ldaa 	#20    ;Charger la valeur decimal 20 dans A
	staa	arcnt  ;Stocke A dans l'octet arcnt
	ldx	#array ;Charg� dans X l'adresse du tableau
	clr	sum    ;Effacer les informations dans sum
again	ldaa	0,X    ;Mettre la premi�re valeur du tableau (point� par X) dans A
	lsra	       ;D�caler tous les bits vers la droite
	bcs	next   ;Si le carry est a 1 a cause du d�calage, le pointeur va aller a next
	ldaa	sum    ;Charger dans A la valeur dans sum
	adda	0,X    ;Additionner la valeur X au contenu de A et stock� le r�sultat dans A
	staa	sum    ;Stock� le r�sultat de l'addition dans sum
next	inx            ;Incr�ment� la valeur de X par 1
 	dec	arcnt  ;D�cr�ment� la valeur de arcnt de 1, si arcnt atteint 0, Z va etre activ�
 	bne	again  ;Si Z=0 il va aller � l'�tiquette again
 	swi            ;Aller au moniteur
 	org	$2000  ;D�placer l'origine pour stocker les valeurs
array	fcb	1,3,5,7,2,4,6,8,9,11,13,10,12,14,15,17,19,16,18,20 ;D�finir un espace pour stock� les valeurs
        end
/*
Décale un nombre de 4 octets vers la gauche de 2 positions
*/
N	equ	2			;Ex�cuter le d�calage 2 fois
	org	$1000
array	dc.b	$0D, $2F, $09, $5A	;R�server 4 octets avec des valeurs
	org	$1500	
	ldy	#N			;Charger dans Y le nombre de shift a effectuer
loop	ldx	#$1002			;Charger dans X l'adresse des 2 octets les moins significatifs
	jsr	shift			;D�caler les 4 octets et les enregistrer en m�moire
	dbne	y,loop			;Recommencer tant qu'on a pas assez shifter
	swi				;Retour au moniteur


shift	ldd	2,x-			;Charger dans D 2 octets et d�cr�menter X de 2
	asld				;D�caler les 2 octets dans D
	adca	#0			;Ajouter le carry
	std	2,x			;Enregistrer les 2 octets a leur place respective
	bne	shift			;Recommencer afin de shifter 4 octets en tout
	rts				;Return


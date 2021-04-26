	/*
	Ce programme additionne les nombres hexadécimal $01 et $02
	et store la réponse à l'adresse $2000
	*/
	org $1000 ;D�finir l'adresse d'origine
	ldaa #$01 ;Charger dans A la valeur #$01
	ldab #$02 ;Charger dans B la valeur #$02
	aba       ;Ajouter B dans A
	staa $2000 ; Stock� A � l'adresse $2000
	swi	;Retourn au moniteur
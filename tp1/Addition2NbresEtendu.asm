	/*
	Ce programme additionne deux nombres aux adresses $1011 et $1015 
	et le store à l'adresse $2000
	*/
	org $1000  ;D�finir l'origine du d�but du programme
	ldaa $1011 ;Charger dans A la valeur � l'adresse $1011
	ldab $1015 ;Charger dans B la valeur � l'adresse $1015
	aba        ;Ajouter B � A
	staa $2000 ; Stock� le r�sultat � l'adresse $2000
	swi        ;Retourn au moniteur
	/*
	Ce programme additionne plusieurs nombres aux adresses $1000, $1001 et $1002
	et store la réponse à l'adresse $1005
	*/
	org $1500 ;D�finir l'origine du d�but du programme
	ldaa $1000;Charger dans A la valeur � l'adresse $1000
	adda $1001;Ajouteur la valeur � l'adresse $1001 � A
	adda $1002;Ajouteur la valeur � l'adresse $1002 � A
	staa $1005;Stock� la somme � l'adresse $1005
	end       ;Finir le programme
	
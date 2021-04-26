	/*
	Ce programme divise 2 nombres de 16 octets a l'adresse $1100 et $1200. 
	Store le quotient à l'adresse $1300 et le restant à l'adresse $130A
	*/
	org $1500 ;D�finir l'origine du d�but du programme
	ldd $1100 ;Charger dans D la valeur � l'adresse $1100
	ldx $1200 ;Charger dans X la valeur � l'adresse $1200
	idiv	  ;Effectuer la division sans signe entre le D et et X, Quotient->X, Restant->D
	stx $1300 ;Stocker le quotient � l'adresse $1300
	std $130A ;Stocker le restant � l'adresse $130A
	end       ;Fin du programme
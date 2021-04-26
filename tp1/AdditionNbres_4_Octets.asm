	/*
	Ce programme additionne 2 nombres de 4 octets contenu dans $1100 et $1200
	et store le résultat dans $1300
	*/
	org $1000 ;D�finir l'origine du d�but du programme
	ldd $1102 ;Charg� dans D la valeur � l'adresse $1102 et $1103
	addd $1202;Additionn� � D les 2 octets $1202 et $1203
	std $1302 ;Stock� D � l'adresse $1302
	ldaa $1101;Charger dans A la valeur � l'adresse $1101
	adca $1201;Additionn� � A la valeur � l'adresse $1201 et le carry
	staa $1301;Stock� A dans l'adresse $1301
	ldaa $1100;Charger dans A la valeur � l'adresse $1100
	adca $1200;Additionn� � A la valeur � l'adresse $1200 et le carry
	staa $1300;Stock� A dans l'adresse $1300
	end       ;Fin du programme
/*
Ce programme effectue une boucle 4 fois en additionnant une valeur au compteur et la storer dans la mémoire
*/
	org $1500  ;Definir l'adresse du debut du programme
	ldd #$010A ;Charger la valeur $010A dans le registre D
	std $1516  ;Stocke la valeur dans le registre D a l'adresse $1516
	ldab #$00  ;charger dans l'accumulateur B la valeur $00
	incb       ;incrementer la valeur dans b de 1
	ldx $1516  ;charger dans le registre x la valeur a l'adresse $1516
	abx        ;Additioner B + X et mettre le resultat dans X
	stx $1516  ;stocke X a l'adresse $1516
	cmpb #$04  ;Compare B a la valeur $04
	bne $1508  ;Si B n'est pas egal a $04, il va aller a l'instruction stocke a l'adresse $1508 (Z=0: faire la boucle)
        swi        ; retour au moniteur
 
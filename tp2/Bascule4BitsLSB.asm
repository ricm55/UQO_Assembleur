/*
Ce programme permet de faire basculer les 4 bits LSB d'une valeur situé à l'adresse $53
*/
	org  $1500  ; l�adresse de d�but du programme 
	ldaa $53    ; charg� la valeur a l'adresse $53 dans l'accumulateur A
	eora #$0F   ;Effectuer un OR afin de s'assurer que les 4 derniers bits sont 1
	staa $1000  ; Enregistrer la valeur dans A a l'adresse $1000	
        end         ; Fin du programme
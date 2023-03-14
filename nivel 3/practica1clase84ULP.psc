Algoritmo sin_titulo
	Definir  num Como Entero;
	Repetir
		Imprimir "elige alguna ded las siguientes opcciones del menu " ;
		Imprimir  " 1. saludar" ; 
		Imprimir  " 2. salir " ;
		Repetir
			Leer  num ;
		Hasta Que num = 1 o num = 2 
		Segun num Hacer
			1: imprimir "usted eligio saludar" ;
				Imprimir "usted esta saludando" ;
			2: imprimir "usted eligio salir" ;
				Imprimir "usted salio" ;
			
		FinSegun
	Hasta Que num = 2
FinAlgoritmo

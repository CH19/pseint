Algoritmo sin_titulo
	Definir  num, contador, num2, x, a, b Como Entero;
	num = 1 ;
	num2 = 1 ;
	x= num + num2 ;
	Para x = 1 Hasta 30 Hacer
		x= num + num2 ;
		Imprimir "para esta vuelta" contador "el numero tiene el valor de " x ; 
		num = num2 ;
		num2 = x ;
	FinPara
FinAlgoritmo

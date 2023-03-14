Algoritmo a
	Definir  pantalon, nombreclint Como Caracter
	Definir  precio, cantidad, subtotal Como Entero
	Mostrar "cual es su nombre"
	Leer nombreclint
	Mostrar "cual tipo de pantalon desea escoger" Sin Saltar
	Leer  pantalon
	pantalon = Mayusculas(pantalon)
	Mostrar "cuantos pantalones va a llevar" Sin Saltar
	leer cantidad
	
	si pantalon = "A" Entonces
		precio = 80000
	SiNo
		si pantalon = "B" Entonces
			precio = 105000
		SiNo
			si pantalon = "C" Entonces
				precio = 250000
				
			FinSi
			
		FinSi
	FinSi
	subtotal = precio*cantidad
	Mostrar  "nombre de cliente:" Sin Saltar
	Mostrar nombreclint
	Mostrar "pantalon escogido:" Sin Saltar
	Mostrar pantalon
    Mostrar "cantidad escogida" Sin Saltar
	Mostrar "precio de pantalon escogido por la cantidad:" Sin Saltar
	Mostrar subtotal
FinAlgoritmo

	

Algoritmo sin_titulo
	definir est Como Caracter
	Definir  entrada, edad, precio, porcentaje Como Real
	mostrar "indique su edad"
	leer edad
	entrada = 100000
	Mostrar "es estudiante?"
	leer est
	si edad > 0 Entonces
		
		si edad < 2 Entonces
			porcentaje = 100
		SiNo
			si edad <= 5 Entonces
				porcentaje = 50
			SiNo
				si edad <= 10 Entonces
					
					porcentaje= 20
					si est = "Si" 
						porcentaje = 25
						
					FinSi
				SiNo
					si edad <= 54 Entonces
						si est = "si" Entonces
							
							porcentaje = 25
						FinSi
						
					FinSi
					si edad >= 55 Entonces
						porcentaje = 30
						si est = "Si"
							porcentaje = 25
						FinSi
					FinSi
				FinSi
				
				
			FinSi
			
		FinSi
	SiNo
		Mostrar "escribio una edad ivalida vuelva a intentarlo"
	FinSi
	

	si edad < 0 Entonces
		Mostrar "error"
		Mostrar "vuelva a colocar la edad"
	FinSi
	
	precio = entrada - (entrada*porcentaje/100)
	Mostrar "porcentaje" porcentaje
	Mostrar "precio final" precio
	
	
FinAlgoritmo

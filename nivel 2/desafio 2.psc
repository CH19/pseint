Algoritmo sin_titulo
	definir boleto Como Caracter
	definir preciobot,dscto, cantidatbot, subtotalsindesc, descuento, preciodesc, montodesc Como Entero
	Mostrar "indique que tipo de boleto desea comprar,  [V]ip 500.000 [P]referencial 300.000 [G]eneral 150.000"
	leer boleto
	boleto = Mayusculas(boleto)
	Mostrar "indique cuanta cantidad de boletos desea comprar"
	leer cantidatbot
	si boleto = "V" Entonces
		preciobot = 500000
	sino	
		si boleto = "P" Entonces
			preciobot = 300000
		SiNo
			si boleto = "G" Entonces
				preciobot = 150000
				
			FinSi
		FinSi
	FinSi
	subtotalsindesc = preciobot*cantidatbot
	si subtotalsindesc > 0 Entonces
		si subtotalsindesc <= 400000 Entonces
			descuento = 5
		SiNo
			si subtotalsindesc <= 1399999 Entonces
				descuento = 13
			SiNo
				si subtotalsindesc <= 1800000 Entonces
					descuento = 7
				sino 
					si subtotalsindesc < 2400000 Entonces
						descuento = 13
					sino 
						si subtotalsindesc > 2400000 Entonces
							descuento = 10
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	SiNo
		Mostrar "Error!!!!"
		Mostrar "estas colocando algo mal rectifica"
		
	FinSi
	montodesc = (subtotalsindesc*descuento/100)
	preciodesc = subtotalsindesc - montodesc
	Mostrar "precio de boletos" preciobot
	Mostrar "boletos a comprar" cantidatbot
	Mostrar "descuento" descuento "%"
	Mostrar "precio de los boletos por la cantidad sin el descuento" subtotalsindesc 
	Mostrar "monto de descuento" montodesc
	Mostrar "monto con el descuento aplicado" preciodesc
FinAlgoritmo

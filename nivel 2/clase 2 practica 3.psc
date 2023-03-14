Algoritmo sin_titulo
	definir producto, cant, subtot, preciofin, iva, precioend Como real
	Definir nombreprod Como Caracter
	Mostrar "ingrese el nombre del producto:" Sin Saltar
	leer nombreprod 
	Mostrar "ingrese el precio del producto a comprar:" Sin Saltar
	leer producto
	Mostrar "ingrese la cantidad del producto"
	leer cant
	subtot = producto*cant
	si subtot >= 50000 Entonces
		preciofin = subtot - (subtot*0.05)
		Mostrar "a"
	SiNo
		preciofin = subtot - (subtot*0.02)
		Mostrar "b"
	FinSi
	iva = preciofin*0.16
	precioend = preciofin+iva
	Mostrar "el precio final es" precioend "Bs"
	Mostrar "el iva es igual a " iva "Bs"
	mostrar "el subtotal es igual a  con el descuento" preciofin "Bs"
	Mostrar  "el subtotal sin el descuento es " subtot "Bs"
FinAlgoritmo

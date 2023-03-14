SubAlgoritmo Registro(nombre Por Referencia, tipoFran Por Referencia, cantidadFran Por Referencia)
	Imprimir "indiqueme cual es su nombre" ;
	Leer  nombre ;
	Imprimir "cual tipo de franela desea comprar" ;
	Imprimir "La franela A = 25.000 " ;
	Imprimir "La franela B = 150.000 " ;
	Imprimir "La franela C 168.900 " ;
	Repetir
		tipoFran = Mayusculas(tipoFran) ;
		leer tipoFran ;
		si !tipoFran = "A" y !tipoFran = "B" y !tipoFran = "C" 
			Imprimir "reintente nuevamente colocar el nombre de la franela" ;
		FinSi
	Hasta Que tipoFran = "A" o tipoFran = "B" o tipoFran = "C" ;
	Imprimir "cuantas franelas desea comprar" ;
	//aqui añadi algunos ciclos y estructuras condicionales para que quedara un poco mas completa la parte del Registro
	Repetir
		Leer  cantidadFran ;
		si cantidadFran <= 0 Entonces
			Imprimir "introduzca una cantidad valida" ;
		FinSi
	Hasta Que cantidadFran > 0 
FinSubAlgoritmo
SubAlgoritmo PrecioDeFRan(tipoFran, PrecioUnid Por Referencia)
	si tipoFran = "A" Entonces
		PrecioUnid = 25000 ;
	SiNo
		si tipoFran = "B" Entonces
			PrecioUnid = 150000 ;
		SiNo
			si tipoFran = "C" Entonces
				PrecioUnid = 168900 ;
			FinSi
		FinSi
	FinSi
FinSubAlgoritmo
SubAlgoritmo CalcularDesc(cantidadFran, descuento Por Referencia)
	si cantidadFran > 0 y cantidadFran < 6 Entonces
		descuento = 0 ;
	SiNo
		si cantidadFran >= 6 y cantidadFran <= 11 Entonces
			descuento = 5 ;
		SiNo
			si cantidadFran > 12 y cantidadFran < 23 Entonces
				descuento = 0 ;
			SiNo
				si cantidadFran >= 24 Entonces
					descuento = 15 ;
				FinSi
			FinSi
		FinSi
	FinSi
FinSubAlgoritmo
SubAlgoritmo CalcularMonto(cantidadFran, PrecioUnid, montoCompra Por Referencia)
	montoCompra = cantidadFran * PrecioUnid ;
FinSubAlgoritmo
//aqui añadi dos SubProcesos para unas tareas que perfectamente se podia hacer en uno solo porque como el enunciado decia que habia
//que crear un SubProceso  para una tarea especifica lo hice asi, espero que este bien
SubAlgoritmo  CalcularTotal(montoCompra, descuento, montoPagar Por Referencia)
	Definir  DescuentoAPagar Como Entero;
	DescuentoAPagar = montoCompra*descuento/100 ;
	montoPagar = montoCompra - DescuentoAPagar ;
FinSubAlgoritmo
SubAlgoritmo MostrarFactura(nombre, cantidadFran, montoCompra, descuento, montoPagar, tipoFran)
	//se esta mostrando la facutra, espero que todo este bien
	Imprimir "cliente[" nombre "]" ;
	Imprimir "compro[" cantidadFran "] franelas del tipo[" tipoFran "]" ;
	Imprimir "por el cual debe pagar [" montoCompra "] $ " ;
	Imprimir "obtine un descuento del[ "  descuento "] % " ;
	Imprimir "el total a pagar es de [" montoPagar "] $" ;
FinSubAlgoritmo
Algoritmo CalcularFacturaDeFanelas
	Definir  nombre, tipoFran Como Caracter;
	Definir cantidadFran, montoCompra, descuento, montoPagar, PrecioUnid Como Entero;
	Registro(nombre, tipoFran, cantidadFran) ;	
	PrecioDeFRan(tipoFran, PrecioUnid) ;
	CalcularDesc(cantidadFran, descuento) ;
	CalcularMonto(cantidadFran, PrecioUnid, montoCompra) ;
	CalcularTotal(montoCompra, descuento, montoPagar) ;
	//esto en el codigo principal para que quedara un poco mas completo la estrucutra
	Imprimir "presione cualquier tecla para continuar" ;
	Esperar Tecla;
	Borrar Pantalla;
	MostrarFactura(nombre, cantidadFran, montoCompra, descuento, montoPagar, tipoFran) ;
FinAlgoritmo


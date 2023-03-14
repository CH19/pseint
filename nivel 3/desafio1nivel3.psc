//aqui cree una funcion para calcular las ventas de las sucursales con dos ciclos, uno usando un arreglo para que sea mas facil hacer lectura de las ventas de cada sucursal y en caso de que
//añada otra sucursal es tan facil como cambiar el numero en el arreglo
SubAlgoritmo presiosuc(ventas Por Referencia, i Por Referencia, j Por Referencia, ventastot Por Referencia)   
	Dimension suc[4] ;
	Para i=1 Hasta 4 Con Paso 1 Hacer
		Imprimir "escribe las ventas totales de la sucursal" i ;
		Leer ventas;
		suc[i]=ventas ;
		
	FinPara
	ventastot = 0;
	//el otro ciclo es para calcular las ventas totales, se que en el enunciado decia que esto se tiene que hacer en un modulo distinto(en el mismo en el que se saca promedio) pero no me dejo, supongo que por el arreglo que declare aqui en 
	//la Funcion, el punto es que me parecio mas facil sacar las ventas totales en este mismo modulo y el promedio de las ventas en otro y tambien mas rehusable, espero que no haya problemas y en caso dado tener retroalimentacion del error
	Para j=1 Hasta 4 Hacer
		//se que el hecho de poner el 4 ahi en ves de una variable al principio del Algoritmo para leer la cantidad de sucursales quizas haga el algoritmoo un poco menos rehusable pero como en los objetivos no estaba "Leer  la cantidad de sucursales" no lo colque
		ventastot = ventastot + suc[j] ;
	FinPara	
FinSubAlgoritmo
//este la Funcion  para sacar el promedio de ventas de las 4 sucursales
SubAlgoritmo promediar(promtot Por Referencia, ventastot Por valor)
	Imprimir "las ventas totales en todas las sucursales son:" ventastot "$" ;
	promtot = ventastot / 4;
	Imprimir "el promedio de ventas es igual a=" promtot;
FinSubAlgoritmo
//este es el modulo para sacar la ganancia promedio de las sucursales 
SubAlgoritmo gananciaPromedio( porcentaje Por Referencia, ganancia Por Referencia, promtot Por Valor)
	porcentaje= 30;
	ganancia= (promtot*porcentaje)/100;
FinSubAlgoritmo
//este es el modulo para mostrar los datos del promedio total y tambien la ganancia
SubAlgoritmo mostrarDAtos(ganancia, promtot)
	Imprimir "la ganancia promedio de las sucursales es =" ganancia "$" ;
	Imprimir "el promedio de ventas en las sucursales es=" promtot "$";
FinSubAlgoritmo
Algoritmo sin_titul
	Definir  porcentaje, j, i Como Entero;
	Definir suc, ventas, ventastot, procentaje, promtot, ganancia Como real;
	//una presentacion para que quedara un poquito mas estetico
	Imprimir "----------------------------------------------------------------------------";
	Imprimir "--------------Bienevenido a FARMAPATODO, la farmacia para todo--------------";
	Imprimir "----------------------------------------------------------------------------";
	presiosuc(suc, ciclo1, ciclo2, ventastot) ;
	promediar(prom, ventastot) ;
	gananciaPromedio( porcen, gananc, prom) ;
	mostrarDAtos(gananc, prom) ;
FinAlgoritmo

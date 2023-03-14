Algoritmo sin_titulo
	//buenas profe este es mi algoritmo espero que todo este correcto :)
	definir nombre_empleado como caracter
	definir salario_base, ventas_enero, ventas_febrero, ventas_marzo, promedio_ventas, ventas_totales Como Real
	definir dias_trabajados Como Entero
	definir comision_ventas, bono_tickets, salario_total Como Real
	
	Mostrar "bienvenido usario para iniciar el analisis es necesario que agregue los siguientes datos" 
	mostrar "Nombre de empleado"
	leer nombre_empleado
	mostrar "salario_base actual"
	leer  salario_base
	Mostrar "monto de ventas hechas en el mes de enero mas reciente"
	leer ventas_enero
	mostrar "monto de ventas hechas en el mes de febrero mas reciente"
	leer ventas_febrero
	mostrar " monto de ventas hechas en el mes de marzo mas reciente"
	leer ventas_marzo
	Mostrar " ¿cual fue la cantidad de dias trabajados en estos 3 meses (90-91 dias) "
	leer dias_trabajados
	//aqui no sabia si mostrar los calculos realizados pero como en el enunciadon no lo mencionaba si no hasta la pregunta 5, no lo hice
	promedio_ventas= (ventas_enero+ventas_febrero+ventas_marzo)/3
	ventas_totales= ventas_enero+ventas_febrero+ventas_marzo
	comision_ventas= ventas_totales*0.15
	bono_tickets= dias_trabajados*10
	salario_total= salario_base+comision_ventas+bono_tickets
	
	mostrar "-----informacion recibida-----"
	mostrar "presiona cualquier tecla para avanzar"
	Esperar Tecla
	Borrar Pantalla
	mostrar "-----recibo-----"
	mostrar "nombre de empleado"  nombre_empleado
	mostrar "cantidad de dias trabajados en estos 3 meses" dias_trabajados
	mostrar "salario base actual" salario_base "$"
	mostrar "promedio de ventas de los 3 meses mencionados" promedio_ventas "$"
	Mostrar "comision de las ventas totales de los meses mencionados por un 15 %" comision_ventas "$"
	mostrar "bono de tickets de alimentacion de 10$ por dia trabajado" bono_tickets "$"
	Mostrar "salario total" salario_total "$"
	
FinAlgoritmo

Algoritmo Ejercicio1
	//Ordoñez Ledezma Sandra Elizabeth
	//Espinosa Villota Erick Jesid
	//Ortega Chapal Victor Manuel
	//Diaz Riascos Karol Valeria
	
	//Implemente un algoritmo en PSEint que pida la aceleracion, el tiempo en segundos,
	//la velocidad inicial y la posicion inicial y calcule la posicion para el tiempo dado. El
	//tiempo no puede ser negativo.
	Definir aceleracion, tiempo, vInicial, pInicial, posicionf Como Real
	Escribir "Ingrese la aceleración en m/s^2"
	Leer aceleracion
	Escribir "Ingrese el tiempo en segundos"
	Leer tiempo
	Escribir "Ingrese la velocidad inicial en m/s"
	Leer vInicial
	Escribir "Ingrese la posición inicial en metros "
	Leer pInicial
	
	si (tiempo>=0 y aceleracion<>0)  Entonces
		posicionf=(((aceleracion/2)*(tiempo*tiempo))+((vInicial*tiempo)+(pInicial)))
		Escribir  " La posición obtenida teniendo en cuenta el tiempo es: ",posicionf , " metros"
	sino 
		Escribir "La posición no se puede realizar debido a que el tiempo es negativo o la aceleración es 0"
	FinSi
	
FinAlgoritmo



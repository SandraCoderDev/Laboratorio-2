Algoritmo Ejercicio1
	//Ordo�ez Ledezma Sandra Elizabeth
	//Espinosa Villota Erick Jesid
	//Ortega Chapal Victor Manuel
	//Diaz Riascos Karol Valeria
	
	//Implemente un algoritmo en PSEint que pida la aceleracion, el tiempo en segundos,
	//la velocidad inicial y la posicion inicial y calcule la posicion para el tiempo dado. El
	//tiempo no puede ser negativo.
	Definir aceleracion, tiempo, vInicial, pInicial, posicionf Como Real
	Escribir "Ingrese la aceleraci�n en m/s^2"
	Leer aceleracion
	Escribir "Ingrese el tiempo en segundos"
	Leer tiempo
	Escribir "Ingrese la velocidad inicial en m/s"
	Leer vInicial
	Escribir "Ingrese la posici�n inicial en metros "
	Leer pInicial
	
	si (tiempo>=0 y aceleracion<>0)  Entonces
		posicionf=(((aceleracion/2)*(tiempo*tiempo))+((vInicial*tiempo)+(pInicial)))
		Escribir  " La posici�n obtenida teniendo en cuenta el tiempo es: ",posicionf , " metros"
	sino 
		Escribir "La posici�n no se puede realizar debido a que el tiempo es negativo o la aceleraci�n es 0"
	FinSi
	
FinAlgoritmo



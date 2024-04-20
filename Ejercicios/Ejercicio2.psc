Algoritmo Ejercicio2
	//Desarrolle un algoritmo en PSEint que permita a un cliente ingresar su consumo mensual de minutos, mensajes de texto y datos, y luego determinar el plan de pago mas adecuado.
	//El codigo debe mostrar al cliente el plan de pago mas adecuado para él, el costo total del plan y cualquier cargo adicional por exceso de consumo.
	Definir minutos, mensajes, datos, costoPlan, cargoMinutos, cargoMensajes, planBasico, planIntermedio, planPremium, cargoDatos, costoTotal, cargoTotal Como Real
	Escribir "Ingrese la cantidad de minutos consumidos en el mes: "
	leer minutos
	Escribir "Ingrese la cantidad de mensajes de texto consumidos en el mes: "
	leer mensajes
	Escribir "Ingrese la cantidad de datos consumidos en el mes en GB: "
	leer datos
	
	cargoMinutos=0
	cargoMensajes=0
	cargoDatos=0
	
	costoTotal = 0
	si(minutos>100) Entonces
		cargoMinutos=(minutos - 100)*0.10
		costoTotal= costoTotal+cargoMinutos
	FinSi
	si(mensajes>50) Entonces
		cargoMensajes=(mensajes - 50)*0.05
		costoTotal= costoTotal+cargoMensajes
	FinSi
	si(datos>1) Entonces
		cargoDatos=(datos - 1)*1
		costoTotal= costoTotal+cargoDatos
	FinSi
	
	
	planBasico=costoTotal+20
	si(planBasico > 34) Entonces
		costoTotal = 0
		cargoMinutos=0
		cargoMensajes=0
		cargoDatos=0
		si(minutos>200) Entonces
			cargoMinutos=(minutos - 200)*0.10
			costoTotal= costoTotal+cargoMinutos
		FinSi
		si(mensajes>100) Entonces
			cargoMensajes=(mensajes - 100)*0.05
			costoTotal= costoTotal+cargoMensajes
		FinSi
		si(datos>2) Entonces
			cargoDatos=(datos - 2)*1
			costoTotal= costoTotal+cargoDatos
		FinSi
	FinSi
	
	planIntermedio=costoTotal+35
	
	si(planIntermedio > 49 ) Entonces
		cargoMinutos=0
		cargoMensajes=0
		cargoDatos=0
		costoTotal = 0
		si(minutos>400) Entonces
			cargoMinutos=(minutos - 400)*0.10
			costoTotal= costoTotal+cargoMinutos
		FinSi
		si(mensajes>200) Entonces
			cargoMensajes=(mensajes - 200)*0.05
			costoTotal= costoTotal+cargoMensajes
		FinSi
		si(datos>4) Entonces
			cargoDatos=(datos - 4)*1
			costoTotal= costoTotal+cargoDatos
		FinSi
	FinSi
	
	cargoTotal=(cargoDatos + cargoMensajes + cargoMinutos) 

	planPremium=costoTotal+50
	
	si(planBasico<35)Entonces
		Escribir "El plan recomendado es el plan básico"
		Escribir "El costo del plan es $20"
		Escribir "El cargo total de los excedentes es de: $",cargoTotal
		Escribir "El costo total es de: $",planBasico
	SiNo
		si(planIntermedio >=35 y planIntermedio<50)Entonces
			Escribir "El plan recomendado es el plan intermedio"
			Escribir "El costo del plan es $35"
			Escribir "El cargo total de los excedentes es de: $",cargoTotal
			Escribir "El costo total es de: $",planIntermedio
		SiNo
			si(planPremium>=50)Entonces
				Escribir "El plan recomendado es el plan premium"
				Escribir "El costo del plan es $50"
				Escribir "El cargo total de los excedentes es de: $",cargoTotal
				Escribir "El costo total es de: $",planPremium
			FinSi
		FinSi
	FinSi
	
FinAlgoritmo

Algoritmo Parcial1
	Definir opc, x Como Entero
    Definir primer, segund, tercer, promedio Como Real
	Definir mater Como Caracter
	//estas variables son del caso 1
	Definir hrsSemestre, hrsSemana, faltas, maxFaltas, matSem, matRep Como Entero
	Definir minAsis, mitad Como Real
	Definir materia Como Caracter
	//estas son las variables del caso 2
	Definir Materias_basicas, Materias_nobasi, Materias_curso, Materias_repro, diferencia, mitad_curso Como Entero
	//variables del caso 3
	Repetir
		Limpiar Pantalla
		Escribir "========================================="
		Escribir "       Consultas académicas UACH"
		Escribir "========================================="
		Escribir " 1) Promedio de 3 parciales"
		Escribir " 2) Examen no ordinario"
		Escribir " 3) Baja definitiva por materias básicas"
		Escribir " 4) Equipo"
		Escribir " 5) Salir"
		Escribir "========================================="
		Escribir " Selecciona una opción: " Sin Saltar
		Leer opc
		Limpiar Pantalla
		Segun opc Hacer
			Caso 1:
				Limpiar Pantalla
				Escribir " Promedio de 3 parciales"
				Escribir " De que materia deseas calcular el promedio: " Sin Saltar	
				Leer mater
				Repetir
					Escribir " Ingresa primer parcial: "Sin Saltar
					Leer primer
					Si primer<0 o primer >10 Entonces
						Escribir " No se permiten calificaciones menores a 0 o mayores a 10"
					FinSi
				Hasta Que primer>=0 y primer<=10
				//Validar segundo parcial
				Repetir
					Escribir " Ingresa segundo parcial: " Sin Saltar
					leer segund
					Si segund<0 o segund>10 Entonces
						Escribir " No se permiten calificaciones menores a 0 o mayores a 10"
					FinSi
				Hasta Que segund>=0 y segund<=10
				//Validar tercer parcial
				Repetir
					Escribir" Ingresa tercer parcial: " Sin Saltar
					Leer tercer
					Si tercer<0 o tercer>10 Entonces
						Escribir " No se permiten calificaciones menores a 0 o mayores a 10"
					FinSi
				Hasta Que tercer>=0 y tercer<=10
				//Calcular el promedio
				promedio= (primer*0.3)+(segund*0.3)+(tercer*0.4)
				Escribir " ------------------------------"
				Escribir " El promedio de " , mater " es: " , promedio
				//Indicar si aprobo o no la materia
				Si promedio>=7 Entonces
					Escribir " Felicidades aprobaste " , mater
				Sino 
					Escribir " No aprobaste, ponte a estudiar más"
				FinSi
				Escribir " Presione cualquier tecla para volver al menu"
				Esperar Tecla
			Caso 2:
				Escribir " -------------------------------------------"
				Escribir "  ¿Puedo presentar el examen no ordinario?"
				Escribir "             ¡Averiguémoslo!"
				Escribir " -------------------------------------------"
				Escribir ""
				//Faltas y reprobadas vs examen no ordinario
				Escribir " Materia a evaluar: " Sin Saltar
				Leer materia
				Repetir
					Escribir " Horas a la semana de ", materia  ": "Sin Saltar
					Leer hrsSemana
					
					Si hrsSemana<1 o hrsSemana>5 Entonces
						Escribir " Error. Las horas deben estar en un rango de 2 a 5"
					FinSi
				Hasta Que hrsSemana>1 y hrsSemana<=5	
				hrsSemestre=hrsSemana*16
				Escribir " Llevas ", hrsSemestre, " horas de ", materia, " al semestre." 
				minAsis=hrsSemestre*0.6 //redondear hacia arriba si sale decimal
				Si ((minAsis+1)-redon(minAsis)) <>1 Entonces
					minAsis=trunc(minAsis)+1
				FinSi
				maxFaltas=hrsSemestre-minAsis
				Escribir " Tienes derecho a ", maxFaltas, " faltas"
				Repetir
					Escribir " Faltas en ", materia, ": " Sin Saltar
					Leer faltas
					Si faltas<0 o faltas>hrsSemestre Entonces
						Escribir " Ingresa un número entre 0 y ", hrsSemestre
					FinSi
				Hasta Que faltas>=0 y faltas<=hrsSemestre
				Si faltas > maxFaltas Entonces
					Escribir " No tienes derecho a presentar examen no ordinario"
					//aquí debería devolverse al menu principal con una tecla
					Escribir ""
					Escribir " Presiona cualquier tecla para volver al menu"
					Esperar Tecla
				SiNo
					Escribir ""
					Escribir " -----------------------------------------------------------------------"
					Escribir "| Con base en tus faltas tienes derecho a presentar examen no ordinario |"
					Escribir "| Ahora veremos si con base en materias reprobadas puedes presentarlo.  |"
					Escribir " -----------------------------------------------------------------------"
					Escribir ""
					Repetir
						Escribir " Materias cursadas este semestre: "Sin Saltar
						Leer matSem
						Si matSem <1 o matSem>10
							Escribir " Ingresa un número entre 1 y 10"
						FinSi
					Hasta Que matSem>=1 y matSem<=10
					
					Repetir
						Escribir " Materias reprobadas: " Sin Saltar
						Leer matRep
						Si matRep<0 o matRep>matSem Entonces
							Escribir " Error. No se aceptan cantidades negativas, ni mayores a las materias del semestre."
						FinSi
						
					Hasta Que matRep>=0 y matRep<=matSem
					mitad = redon(matSem/2)
					
					Si matRep>mitad Entonces
						Escribir " No tienes derecho a presentar examen ordinario por la cantidad de materias reprobadas."
					SiNo
						Escribir " Preparate! Tienes derecho a presentar examen no ordinario."
					FinSi
					//devuelve al menu principal con una tecla
					Escribir ""
					Escribir " Presione cualquier tecla para volver al menu"
					Esperar Tecla
				FinSi
			Caso 3:
				Limpiar Pantalla
				Escribir "=================================================="
				Escribir ""
				Escribir "      Baja Definitiva por Materias Básicas"
				Escribir ""
				Escribir "=================================================="
				Repetir
					Escribir "¿Cuántas materias cursas?" Sin Saltar
					Leer Materias_curso
					Si Materias_curso=0 o Materias_curso<0 Entonces
						Escribir "Error, no se aceptan valores negativos o nulos"
					FinSi
				Hasta Que Materias_curso>0
				//recopila todas las materias del curso
				
				Escribir "--------------------------------------------------"
				Escribir ""
				Escribir "--------------------------------------------------"
				
				Repetir
					Escribir "¿Cuántas materias básicas no acreditaste?" Sin Saltar
					Leer Materias_basicas
					Si Materias_basicas<0 o Materias_basicas>3 Entonces
						Escribir "Valor no valido, sobrepasas o violas cantidad de materias básicas permitidas"
					FinSi
				Hasta Que Materias_basicas>0 o Materias_basicas<3
				//las materias basicas por lo general son 3
				
				Escribir "--------------------------------------------------"
				Escribir ""
				Escribir "--------------------------------------------------"
				
				diferencia=Materias_curso-3
				//es el cálculo del total de materias extra
				Repetir
					Escribir "¿Cuántas materias no básicas no acreditaste?" Sin Saltar
					Leer Materias_nobasi
					Si Materias_nobasi<0 o Materias_nobasi>diferencia Entonces
						Escribir "Valor no valido, sobrepasas o violas cantidad de materias no básicas permitidas"
					FinSi
				Hasta Que Materias_nobasi>0 o Materias_nobasi<=diferencia
				//es el total de materias de diferencia no acreditadas
				
				Escribir "--------------------------------------------------"
				Escribir ""
				Escribir "--------------------------------------------------"
				
				Materias_repro=Materias_basicas+Materias_nobasi
				Escribir "El total de materias reprobadas son: ",Materias_repro
				mitad_curso=redon(Materias_curso/2)
				//en caso de que sea division decimal, se redondea la mitad de materias
				
				Escribir "--------------------------------------------------"
				
				Si Materias_repro<mitad_curso Entonces
					Escribir "Puedes presentar exámen no ordinario de las materias que"
					Escribir "no acreditaste, o bien, recursarlas el próximo semestre"
					//define derecho a exámen ordinario
				SiNo
					Si Materias_basicas=0 o Materias_basicas<3 Entonces
						Escribir "No tienes derecho a exámen no ordinario, pero debes"
						Escribir "recursar materias reprobadas el próximo semestre"
						//solo si aprobaste al menos una básica
					SiNo
						Escribir "Al haber reprobado todas las materías básicas, "
						Escribir "tienes BAJA DEFINITIVA"
						//solo si todas las materias importantes son reprobadas
					FinSi
				FinSi
				
				Escribir "--------------------------------------------------"
				Escribir ""
				Escribir "--------------------------------------------------"
				
				Escribir "Oprime cualquier tecla para continuar"
				Esperar Tecla	
	Limpiar Pantalla
			Caso 4:
				Escribir "      LOS        **************"
				Escribir "             **********************"
				Escribir "          ****************************"
				Escribir "      ************            ************"
				Escribir "     *********                    *********"
				Escribir "    *********       //      ||      *********"
				Escribir "   ********        //       ||        ********"
				Escribir "  ********        //        ||         ********"
				Escribir " ********        //         ||          ********"
				Escribir " ********        -_-_-_-_-_-||          ********"
				Escribir " ********                   ||          ********"
				Escribir "  ********                  ||         ********"
				Escribir "   ********                 ||        ********"
				Escribir "    *********               ||      *********"
				Escribir "     *********                    *********"
				Escribir "      ************            ************"
				Escribir "          ****************************"
				Escribir "             **********************   "
				Escribir "                 **************       FANTÁSTICOS"
				Escribir " "
				Escribir "         Carlos Terrazas Rugelio - 394704"
				Escribir "         Ricardo Robles Mancha  - 394570"
				Escribir "         Elías Campos García - 394412"
				Escribir "         Mariel Rivas Martínez - 394611"
				Escribir " "
				Escribir "  Presione cualquier tecla para volver al menu"
				Esperar Tecla
			Caso 5:
				Escribir " Saliendo del programa..."
				Esperar 1 Segundos
				//se sale
		FinSegun
	Hasta Que opc=5
FinAlgoritmo






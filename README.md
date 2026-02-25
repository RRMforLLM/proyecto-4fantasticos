Desarrollar un programa computacional a través del uso de pseudocódigo.
Desarrollar un programa computacional a través del uso de pseudocódigo
1.- Promedio de 3 parciales:
El programa obtendrá el promedio de 3 parciales
Se pedirán 3 calificaciones , una por cada parcial
Se calculará y deberá mostrar el promedio a pantalla
El programa verificará que las calificaciones capturadas estén entre 0 y 10
El programa indicará con el promedio a pantalla y además si reprobó el semestre o aprobó el semestre.
Una vez calculado el promedio, volverá a aparecer el menú de opciones del programa.
2.- No ordinario
Se verificará si tiene permiso de presentar el examen no ordinario dependiendo de la cantidad de faltas al semestre
También indicará con base a la carga acdémica si el alumno tiene o no permiso de presentar el examen no ordinario
Se pedirá la cantidad de horas por semana que se tiene en la materia reprobada (1<=hrs_semana<=5)
Se calculará la cantidad total de horas al semestre de la materia reprobada (cantidad_hrs_semana * 16)
Se calculara el 60% de la cantidad de horas al semestre de la materia reprobada que es la minima cantidad de asistencias que debe tener al semestre para presentar el examen no ordinario
Se pedirá la cantidad de faltas al semestre de la materia reprobada (0<=cantidad_faltas<=cantidad de hrs_semestre)
Si la cantidad de faltas es mayor a 60% de asistencia entonces no tiene derecho a presentar el examen no oridnario
Si no puede presentar el examen no ordinario por la cantidad de faltas, se le indicará a pantalla y se volverá a presentar el menú de opciones.
PERO si tiene permitido presentar el examen no ordinario por la cantidad de asistencias o faltas , se deberá verificar también por materias reprobadas:
Se pedirá la cantidad total de materias cursadas (1<=cantidad_materias_cursadas<=10)
Se pedirá la cantidad de materias reprobadas (0<=cantidad_reprobadas<=cantidad_materias_cursadas)
Se calcula el 50% de la cantidad de materias cursadas (redondear al próximo numero entero) y se compara con la cantidad de materias reprobadas, si son más las materias reprobadas, no
tiene permitido presentar el examen no ordinario.
Si no puede presentar el examen no ordinario por materias reprobadas se le indicará a pantalla asi como si también si puede presentar el examen y se volverá a presentar el menú de
opciones.
3. Baja definitiva por materias básicas
Se indicará al alumno si esta de baja definitiva o no por reprobar materias básicas (física, Cálculo diferencial e integral, álgebra superior)
Se preguntará la cantidad de materias básicas que no acreditó (0<=materias_básicas_reprobadas<=3)
Se pedirá la cantidad total de materias cursadas (1<=cantidad_materias_cursadas<=10)
Se pedirá la cantidad de materias reprobadas que NO son básicas (0<=cantidad_reprobadas<=cantidad_materias_cursadas)
Se calculará el 50% (redondear al próximo numero entero) de las materias cursadas donde:
Si el 50% es menor a la cantidad de materias totales reprobadas y si está incluida una o dos materias básicas, se indicará no puede presentar no ordinario (porque reprobo mas materias que
el 50%) pero deberá recursar las materias reprobadas el siguiente semestre
Si el 50% es mayor a la cantidad de materias totales reprobadas aunque tenga una, dos o las tres materias básicas reprobadas, podrá presentar no ordinario de las materias reprobadas o
recursarlas el próximo semestre.
Si el 50% es menor a la cantidad de materias totales reprobadas y tiene las 3 materias básicas como reprobadas, se le indicará que tiene baja definitiva
4. Equipo
En esta opción se presentará el nombre del equipo que desarrolló el programa
5. Salir
Preguntará si esta seguro de salir, si responde que si,se dejará de ejecutar el programa, lo contrario, volverá a mostrar el menú.
El programa se presentará el día y hora acordada en clase en el laboratorio LC5. (viernes 13 de marzo en hora de clase)

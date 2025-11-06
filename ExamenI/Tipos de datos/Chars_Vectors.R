# CADENA DE CARACTER
Pais <- "Costa Rica"

#VECTOR
#   • Double          typeof(var_double)
#   • Integer         typeof(var_int)
#   • Lógico          typeof(var_bool)
#   • Carácter        typeof(var_char)
#Estructura fundamental, datos atomica (datos homogeneos)
vector1 <- c(1,5,767,5)
vector2 <- c(14,534,57,67,5)
B <- c(vector1,vector4, 6,7)

#GENERACION SEQUENCIAL
1:4 #Vector c(1,2,3,4)
vector_seq <- c(43:56)

#Func seq()
seq(10,20, by = 3)
seq(40,30, by = -2)

seq(20, 22, length.out = 5)
seq(20, 22, length.out = 10)

#Rep replicar vectores
rep(c(4,5,6),times = 5)

rep(c(1,2,3),each=5)

rep(c("x","y","z","a"),times=c(2,3,4,1))

#Vector vacio
numeros <- numeric()
vector_seq <- scan()

3 # Es un vector unitario en realidad



#CONVERSION VECTOR

#     •Todos los elementos de un vector deben ser del mismo tipo
#     • Si se mezclan tipos se convierten al de mayor rango
#     • El orden de lo rangos es: lógico, entero, real, carácter

#FORZAR CONVERSION
v<-c(FALSE,TRUE,FALSE,FALSE,TRUE,TRUE)
as.integer(v)

#OPERACIONES CON VECTOR + - * / %


# Funciones que se aplican a vectores
#     Estadísticas: sum(), prod(), mean(), median(), var(), sd().
      
#     Manipulación: max(), min(), range(), sort(), rev().

#VECTORES LOGICOS

#   & (AND Lógico): Devuelve TRUE solo si ambos elementos son TRUE.
#   | (OR Lógico): Devuelve TRUE si al menos uno de los elementos es TRUE.
#   ! (NOT Lógico): Invierte el valor lógico.

v <- c(3:6)
v < 5


v1<-c(TRUE,FALSE,TRUE,TRUE)
v2<-c(TRUE,TRUE,TRUE,FALSE)
v1&v2
v1|v2

#EJEMPLO 
temperatura <- c(20, 28, 35, 15, 30, 42, 27)

#   La temperatura debe ser mayor o igual a 25.
#   La temperatura debe ser menor o igual a 30.
corte_min <- 25
corte_max <- 30

condicion_ideal <- ((temperatura >= corte_min) & (temperatura <= corte_max))

#Filtrar el Vector: Usar el vector lógico condicion_ideal para mostrar solo las temperaturas que cumplen la condición.

#Nuevo Filtro OR (|): Queremos saber qué temperaturas son extremas: o son menores a 20 O son mayores a 35. Esto requiere el operador OR lógico (|).

temperatura[condicion_ideal]
condicion_extrema <- (temperatura < 20) | (temperatura > 35)



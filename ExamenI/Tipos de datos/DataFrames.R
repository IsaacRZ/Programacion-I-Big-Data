setwd("~/Big Data/ProgramacionI")
rm(list = ls()) # Remover todas las variables
#DATAFRAME
#Estructura 2D 
#HETEROGENEA (Columnas con distintos tipos de datos:bool,int,float,chr)
#Lista cada componente es una columna(vectores, matrices, listas)

alumnos <- data.frame(
   nombre = c("Ana", "Luis", "Pedro"),
   edad = c(22, 25, 24),
   aprobado = c(TRUE, TRUE, FALSE)
   )

alumnos
#Acceso a columnas 
alumnos$nombre
alumnos$edad
alumnos$aprobado

#Acceso elementos
alumnos[1,] #Filas
alumnos[,2] #Columnas
alumnos[2,3] #Elemento row2, col3

#Nueva COL
alumnos$nota <- c(8.5, 9.0, 6.5)

#Filtar filas 
subset(alumnos, aprobado == TRUE)

#VER Estructura
str(alumnos)
summary(alumnos)

#PRACTICA
nombres <- c("Ana", "Juan", "Sara", "Luis")
edades <- c(28, 35, 22, 41)
activo <- c(TRUE, TRUE, FALSE, TRUE)

empleados <- data.frame(
  Nombre = nombres,
  Edad = edades,
  Activo = activo
)

empleados$Edad
mean(empleados$Edad)

empleados[empleados$Activo == TRUE,]
subset(empleados, Activo == TRUE )


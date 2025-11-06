setwd("~/Big Data/ProgramacionI/ExamenII")

library(readr)

datos_personas <- read.csv("personas.csv")
datos_ventas <- read_csv("ventas.csv")
datos_productos <- read_csv("productos.csv")



print(ventas)


datos_personas
datos_ventas
str(datos_ventas)


# R es vectorizado
ventas$Total <- ventas$Precio * ventas$Cantidad

# Creamos una columna 'GananciaEstimada' en tu archivo
mi_archivo$GananciaEstimada <- mi_archivo$Costo * mi_archivo$Unidades

# Creamos otra columna simple:
mi_archivo$CostoDoble <- mi_archivo$Costo * 2

print(mi_archivo)
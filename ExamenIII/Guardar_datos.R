rm(list = ls())

library(openxlsx)


#1. Haga un data frame que contenga los datos de personas con nombre, apellido, lugar de
#residencia y edad.
personas <- data.frame(
  Nombre = c("Juan", "María", "Carlos", "Ana", "Pedro", "Lucía"),
  Apellido = c("García", "López", "Martínez", "Rodríguez", "Fernández", "Sánchez"),
  Lugar_Residencia = c("Madrid", "Barcelona", "Valencia", "Sevilla", "Bilbao", "Málaga"),
  Edad = c(25, 32, 28, 45, 38, 29)
)
print(personas)
#2. Almacene los datos del data frame en un archivo .csv

write.csv(personas, "personas.csv", row.names = FALSE)


#3. Cambie el directorio de trabajo para almacenar el archivo en otro lugar del disco duro.
setwd("~/Big Data/ProgramacionI")

#4. Almacene el data frame en un archivo .xlsx
write.xlsx(personas, "personas.xlsx", rowNames = FALSE)


#5. Escriba un programa en R que le solicite al usuario datos acerca de mascotas: animal: Gato
#o Perro, Nombre, Edad y los almacene en un data frame y al finalizar el ingreso escriba los
#datos del data frame en archivo .csv y .xlsx.
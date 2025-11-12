#1 Data Frame
personas <- data.frame(
  Nombres = c("Alicia", "Arturo", "Silvia", "Pedro"),
  Edades = c(34, 56, 78, 23),
  Ciudades = c("Granada", "Orlando", "Roma", "La Paz"),
  Numero_de_casa = c(34, 51, 78, 92)
)


nueva_persona <- data.frame(
  Nombres = "Enrique",
  Edades = 43,
  Ciudades = "Almería",
  Numero_de_casa = 83
)

personas <- rbind(personas, nueva_persona)

print(personas)

#2 Acceso elementos lista
nombre <- "Felipe"
edad <- 18
notas <- c(7, 8.0, 7.5)
aprobado <- TRUE
alumno <- list(Nombre = nombre, Edad = edad, Notas = notas, Aprobado = aprobado)

#A Acceder Edad
edad_alumno <- alumno$Edad
print(paste("La edad del alumno es: ", edad_alumno))
#B Acceder Notas
nota_alumno <- alumno$Notas
print(paste("Las notas es: ", nota_alumno))
#C Acceder segunda Nota
segunda_nota_alumno <- alumno$Notas[2]
print(paste("La segunda nota es: ", segunda_nota_alumno))

# 3 Matriz aleatoria del 1 al 25

matriz_aleatoria <- matrix(
  sample(1:25, 25, replace = T)
  , nrow = 5
)
print(matriz_aleatoria)

#4 Vector enteros aplicarle raiz cuadrada
vector_enteros <- c(sample(1:10))
raiz_cuadrado_vector <- sapply(vector_enteros, sqrt)
print(raiz_cuadrado_vector)

#5 Grupos de 2 gatos se pueden formar con 8 gatos 
total_gatos <- 8
grupo_gatos <- 2
grupo_combinacion_gatos <- choose(total_gatos, grupo_gatos)
print(paste("Se pueden formar: ", grupo_combinacion_gatos, "grupos de gatos"))

#6 Matriz notas 
notas <- c(5.5, 7.0, 9.5,
           8.0, 6.0, 4.0,
           7.5, 9.0, 7.5,
           6.0, 7.5, 5.5)

matriz_notas <- matrix(notas, nrow = 4, ncol = 3, byrow = TRUE)
# A Asignacion nombre row - col
rownames(matriz_notas) <- c("Juana", "Esteban", "Sofia", "Alejandro")
colnames(matriz_notas) <- c("Examen1", "Examen2", "Examen3")
print(matriz_notas)

#B Promedio por estudiante
promedio_por_estudiante <- apply(matriz_notas, MARGIN = 1, mean)
print(promedio_por_estudiante)

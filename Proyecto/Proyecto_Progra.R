#Proyecto Programación 1
#Integrantes: Sebastián Calvo, Jafet Calvo, Isaac Rodríguez 
contador <- 1
grupo <- matrix(NA, nrow = 1, ncol = 3)

for (contador in 1:10) {

if (contador <= 1){
  nota1 <- as.numeric(readline(prompt = "Ingrese la primera nota: "))
  nota2 <- as.numeric(readline(prompt = "Ingrese la segunda nota: "))
  nota3 <- as.numeric(readline(prompt = "Ingrese la tercera nota: "))
  
  estudiante <- matrix(c(nota1, nota2, nota3), nrow = 1, ncol = 3)
  materias <- c("Español", "Ciencias", "Matemáticas")
  nombre <- paste0("Estudiante",contador)
  colnames(estudiante) <- materias
  rownames(estudiante) <- nombre  
  
  grupo <- estudiante
}else if(contador <= 10){
nota1 <- as.numeric(readline(prompt = "Ingrese la primera nota: "))
nota2 <- as.numeric(readline(prompt = "Ingrese la segunda nota: "))
nota3 <- as.numeric(readline(prompt = "Ingrese la tercera nota: "))

estudiante <- matrix(c(nota1, nota2, nota3), nrow = 1, ncol = 3)
materias <- c("Español", "Ciencias", "Matemáticas")
nombre <- paste0("Estudiante",contador)
colnames(estudiante) <- materias
rownames(estudiante) <- nombre

grupo <- rbind(grupo, estudiante)
}else print("Ya no se pueden ingresar mas notas")
}

print(grupo)
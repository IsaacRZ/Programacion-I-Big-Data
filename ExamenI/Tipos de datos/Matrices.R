#Estructura 2D (Filas y columnas) 
# Datos homogeneos
matriz1 <- matrix(c(8:11), nrow = 2,ncol=2)

matrix2 <- matrix(1:15, nrow=3,byrow=FALSE)
length(matrix2)
dim(matrix2)
nrow(matrix2)
ncol(matrix2)

puntos_anotados <- matrix(sample(1:33,9,replace=T), nrow=3)
rownames(puntos_anotados) <- c("Piedra","Lopez","Madrigal")
colnames(puntos_anotados) <- paste("juego",1:3)

colSums(puntos_anotados)
rowSums(puntos_anotados)

mean(puntos_anotados)
rowMeans(puntos_anotados)
colMeans(puntos_anotados)
sum(puntos_anotados)


matrix3 <- matrix(sample(1:12,9,replace = T),nrow=3)
apply(matrix3,2,sqrt)

#• Solución al sistema
#     3x+y=18
#     4x+2y=26

sistema <- matrix(c(3,4,1,2),nrow=2)
constantes <- c(18,26)
solve(sistema,constantes)

#Matriz logica
matrix2 >= 6

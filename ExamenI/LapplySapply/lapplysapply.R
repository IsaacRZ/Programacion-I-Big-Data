#APPLY
#Aplicar una funcion a cada elemento de una lista, vector (for)
#Lapply es mas fundamental lapply(X,funcion, ...)   DEVUELVE LISTA (estruc compleja)
#Sapply busca simplificar el resultado              DEVUELVE VECTOR (estruc simple) si es homogeneo

lapply(1:5, function(x) x ^3)

numeros <- list(1:3,4:6,7:9)  

lapply(numeros, sum)
sapply(numeros, sum)

#CUADRADO FUNCT
cuadrado <- function(x) x ^ 2 

valores <- list(1:4)

lapply(valores,cuadrado)


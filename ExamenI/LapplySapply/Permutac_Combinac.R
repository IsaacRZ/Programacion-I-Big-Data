#COMBINACIONES
#Seleccionar elementos sin orden 
# XY == YX

#PERMUTACIONES
#Ordenar elementos
# AB != BA

#Combinaciones ¿Cuántas combinaciones de 3 elementos se pueden hacer con 5 elementos?
choose(5,3)

#PERMUTACIONES ¿Cuántas permutaciones de 3 elementos de 5 se pueden hacer?
factorial(5) / factorial(5 - 3)


#PAQUETE
install.packages("gtools")
library(gtools)

combinations(n = 5, r = 3, v = c("A", "B", "C", "D", "E"))
  
permutations(n = 5, r = 3, v = c("A", "B", "C", "D", "E"))


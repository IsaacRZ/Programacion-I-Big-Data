# FUNCIONES
# Codigo reutilizable para una tarea en especifico. 
#Base progra estructurada y modulizar codigo(limpio y mantenimiento)

#ENTRADAS: Argumentos o Parametros
#PROCESO: proceso logico (if/else, for, while)
#SALIDA: return()

#FUNCIONES NATIVAS: mean(), sum(), plot()

suma <- function(a, b){
  resultado <- a + b 
  return(resultado)
}

#Parametros OMISION
saludo <- function(nombre = "amigo"){
  paste("Hola ",nombre)
}
saludo()

#Rango 
en_rango <- function(n, minimo, maximo){
  return(n >= minimo && n <= maximo)
}
en_rango(5,4,7)

#Tres DIGITOS
tres_digitos <- function(n){
  return(n >= 100 && n <= 999)
}
tres_digitos(2444)

#Menor de TRES NUMEROS
menor_de_tres <- function(a, b, c){
  menor <- a
  if(b < menor){
    menor <- b
  }
  if(c < menor){
    menor <- c
  }
  return(menor)
}
menor_de_tres(942234,952342,922322)

#DOS numeros iguales
iguales <- function(a, b){
  return(a == b)
}
iguales(2,22)

#SUMA DE 1 a n
# NATURALES
sum_naturales <- function(n){
  suma <- 0
  for (i in 1:n){
    suma <- suma + i
  }
  return(suma)
}
sum_naturales(5)

#DIFERENCIA ABSOLUTA
diferencia_absoluta <- function(a,b){
  if(a > b){
    return(a - b)
  } else {
    return(b - a)
  }
}
diferencia_absoluta(3,66)

#CONTADOR DIVISORES
contar_divisores <- function(n) {
  contador <- 0
  for (i in 1:n) {
    if (n %% i == 0) {
    contador <- contador + 1
    }
}
  return(contador)
  }
contar_divisores(9)

#TIPO NUMERO
tipo_numero <- function(n) {
  if (n < 0) {
    return("Negativo")
  } else if (n == 0) {
    return("Cero")
  } else {
    return("Positivo")
  }
}
tipo_numero(0)

#SUMA IMPARES
suma_impares <- function(n){
  suma <- 0 
  for (i in 1:n){
    if (i %% 2 != 0){
      suma <- suma + i
    }
  }
  return(suma)
}
suma_impares(5)

#SUMA PARES
suma_pares <- function(n){
  suma <- 0 
  for (i in 1:n){
    if (i %% 2 == 0){
      suma <- suma + i
    }
  }
  return(suma)
}
suma_pares(4)

#PRIMEROS MULTIPLOS
primeros_multiplos <- function(base, n){
  for (i in 1:n){
    print(base ** i)
  }
}
primeros_multiplos(2,50)


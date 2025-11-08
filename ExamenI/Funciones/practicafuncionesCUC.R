##OPERACIONES
suma <- function(a, b){
  return(a + b)
}
resta <- function(a, b){
  return(a - b)
}
suma(1,2)
resta(1,2)

#DEVOLVER NUMERO MAYOR
num_mayor <- function(a, b){
  if(a > b){
    return(a)
  } else return(b)
}
num_mayor(55,35345)

#RAIZ n*n
raiz_n <- function(n){
  return(n * n)
}
raiz_n(23)

# A Multiplo de B
multiplo <- function(a, b){
  return(a %% b == 0)
}
multiplo(4,2)


#CALIFICACION 0 a 100 
calificacion <- function(n){
  if (n >= 0 && n <= 100){
    if(n >= 90){
      print(paste("¡Excelente!, tu nota es:",n))
    }
    else if(n >= 80 && n <= 89){
      print(paste("¡Bien!, tu nota es:",n))
    }
    else if(n >= 70 && n <= 79){
      print(paste("¡Suficiente!, tu nota es:",n))
    }
    else{
      print(paste("Insuficiente para pasar, tu nota es:",n))
    }
    return(n)
  } else{
    paste("No es un numero entre 0 y 100, digite un numero correcto")
  }
}
calificacion(90)

#SUMA NUMEROS DOS DIGITOS EN RANGO
sum_rango <- function(a, b){
  sum_total <- 0
  for (i in a:b){
    sum_total <- sum_total + i
    
  }
  return(sum_total)
}





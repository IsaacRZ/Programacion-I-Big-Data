#DIFERENCIA ABSOLUTA
dif_absoluta <- function(a, b){
  if(a > b){
    return(a-b)
  } else {
    return(b-a)
  }
  
}
dif_absoluta(50,7)

#PRACTICA 
#GEMINI

anio_bisiesto <- function(year){
  return(((year %% 4 == 0) && (year %% 100 != 0)) | (year %% 400 == 0))
}

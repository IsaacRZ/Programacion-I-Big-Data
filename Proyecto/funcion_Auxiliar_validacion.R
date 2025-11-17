rm(list = ls())

#Funcion AUX validar
#------------------
validacion_numerico <- function(mensaje, intento = 1){
  #Entrada del usuario almacenada en variable "entrada"
  entrada <- readline(prompt = mensaje)
  #Convertir a numerico y suprimir alertas al usuario
  valor_numerico <- suppressWarnings(as.numeric(entrada))
  
  #Condicion para validar si es NA o está dentro del rango (1-100) o devolver nota correcta.
  if(is.na(valor_numerico)){
    cat("⚠️ ERROR: Debe ingresar un número válido.⚠️ ️" ) 
    return(validacion_numerico(mensaje, intento + 1))
    }
  else if (valor_numerico < 0 || valor_numerico > 100){
    cat ("❌DEBE INGRESAR UN NUMERO ENTRE 1 y 100❌ ")
    return(validacion_numerico(mensaje, intento + 1))
    } 
  else {
    return(valor_numerico)
  }
}

validacion_numerico("Ingrese un numero 1-100: \n")

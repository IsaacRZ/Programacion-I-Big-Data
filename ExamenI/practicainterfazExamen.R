numeros_ingresados <- c()

obtener_num <- function() {
  entrada_chr <- readline("Introduce un numero entero (-1 para salir): ")
  
  
  numero_num <- suppressWarnings(as.integer(entrada_chr))
  return(numero_num)
}

repeat {
  numero <- obtener_num()
  
  # Si numero es -1
  if(numero == -1){
    cat("Fin de la lectura de datos. \n")f
    break
  }
  
  else if (is.na(numero)){
    cat("⚠️ ERROR: Entrada inválida. Introduce solo números enteros.\n") 
  }
  else {
    numeros_ingresados <- c(numeros_ingresados, numero)
    cat("✅ Número", numero, "agregado.\n")
  }
}

# Mostrar resultado final
cat("\nNúmeros ingresados:\n")
print(numeros_ingresados)
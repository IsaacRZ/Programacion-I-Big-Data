# -------------------------------------------------------------
# 1. Definición de la Función de Entrada (Con Conversión)
# -------------------------------------------------------------
obtener_numero <- function() {
  # Usamos readline para obtener la entrada como cadena de texto (chr)
  entrada_chr <- readline("Introduce un número entero (-1 para salir): ")
  
  # Convertimos la cadena de texto a número (num)
  # Usamos suppressWarnings para evitar mensajes de error si el usuario 
  # introduce letras, lo que resultaría en NA.
  numero_num <- suppressWarnings(as.integer(entrada_chr))
  
  # Retornamos el valor numérico (o NA si la conversión falló)
  return(numero_num)
}

# -------------------------------------------------------------
# 2. Bucle Principal y Lógica de Almacenamiento
# -------------------------------------------------------------

# Paso 1: Inicializar un vector vacío para guardar los números.
# 'c()' crea un vector.
numeros_ingresados <- c() 

# Paso 2: Inicializar la variable 'numero' con un valor temporal para 
# entrar al bucle.
numero <- 0 

# Paso 3: Usamos 'while' que es más limpio para esta lógica.
# El bucle se ejecutará MIENTRAS el número NO sea -1 Y NO sea NA (entrada inválida)
while (numero != -1) {
  
  # Leer la entrada usando la función
  numero <- obtener_numero()
  
  # Lógica de Validación y Almacenamiento
  if (is.na(numero)) {
    # Si es NA (el usuario puso algo no numérico), notificamos y el bucle sigue.
    cat("⚠️ ERROR: Entrada inválida. Introduce solo números enteros.\n")
    # No se guarda el NA, ni se actualiza la condición de salida, se repite.
    
  } else if (numero != -1) {
    # Si es un número válido y NO es -1, lo guardamos.
    # El operador 'c()' concatena el vector existente con el nuevo número.
    numeros_ingresados <- c(numeros_ingresados, numero)
    cat("✅ Número", numero, "agregado.\n")
    
  } else {
    # Si el número es -1, salimos del bucle (la condición 'while' lo maneja).
    cat("Fin de la lectura. Procesando resultados...\n")
  }
}

# -------------------------------------------------------------
# 3. Mostrar el Resultado Final
# -------------------------------------------------------------

cat("\n--- Resultados Finales ---\n")
# Usamos print() en el vector guardado
print(numeros_ingresados)
cat("Total de números ingresados (excluyendo el -1):", length(numeros_ingresados), "\n")
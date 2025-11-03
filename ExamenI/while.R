#%% Bucle While en R:
cuenta <- 1
while (cuenta <= 10) {
  print(paste("Cuenta es:", cuenta))
  cuenta <- cuenta + 1
}

# %% Lectores de valores con While:
args <- commandArgs(trailingOnly = TRUE)
numero <- NA_real_

if (interactive()) {
  while (is.na(numero) || numero <= 0) {
    entrada <- readline(prompt = "Ingrese un numero positivo: ")
    numero <- suppressWarnings(as.numeric(trimws(entrada)))
    if (is.na(numero)) {
      cat("Entrada inválida. Por favor ingrese un número válido.\n")
    } else if (numero <= 0) {
      cat("El número debe ser positivo. Intente de nuevo.\n")
    }
  }
} else {
  # modo no interactivo: tomar primer argumento
  if (length(args) >= 1) {
    numero <- suppressWarnings(as.numeric(args[1]))
    if (is.na(numero) || numero <= 0) {
      stop("Modo no interactivo: proporcione un número positivo como argumento.
      \nEjemplo:\nRscript \"
      c:/Users/LENOVO/Documents/Big Data/ProgramacionI/ExamenI/while.R\" 5")
    }
  } else {
    stop("No hay entrada interactiva ni argumento. 
    Ejecute el script en una sesión interactiva o pase un argumento.
    \nEjemplo:\nRscript \"
    c:/Users/LENOVO/Documents/Big Data/ProgramacionI/ExamenI/while.R\" 5")
  }
}

cat("Gracias! Ingresaste el numero positivo:", numero, "\n")
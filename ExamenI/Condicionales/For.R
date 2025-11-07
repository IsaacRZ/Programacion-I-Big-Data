# %% For Iterando sobre un elemento:
objs <- c("carro", "casa", "árbol")
for (c in objs) {
  print(c)
}

# %%:
nota_estudiantes <- c(85, 92, 78, 90, 88, 95, 67, 73, 84, 91)
corte <- 70
estado_for <- vector(mode = "character", length = 10)
for (i in 1:10) {
  if (nota_estudiantes[i] >= corte) {
    estado_for[i] <- "Aprobado"
  } else {
    estado_for[i] <- "Reprobado"
  }
}
print(estado_for)
#>

# %% Repeat:
numero <- 1
repeat {
  cat(numero, "\n")
  if (numero == 5) {
    break
  }
  numero <- numero + 1
}
# %% Repeat:
contador <- 5
repeat {
  cat("Contador es:", contador, "\n")
  contador <- contador - 1
  if (contador == 0) {
    break
  }
}
setwd("~/Big Data/ProgramacionI")
rm(list = ls())
#Estructuras condicionales
# %% Condicional:
n1 <- 23
n2 <- 65

if (n1 >= n2) {
  print("Variable n1 es mayor")
} else {
  print("N2 es mayor")
}
#>if (n1 >= n2) print("Variable n1 es mayor")

# %% Condicional else if Conditions:
#> Puede devolver un vector completo de valores logicos
#> Devuelve un vector de resultados del mismo tamaño que la entrada
n1 <- 4
n2 <- 65
if (n1 > n2) {
  print("Variable n1 es mayor")
} else if (n1 > 10) {
  print("N2 es mayor que 10")
} else {
  print("Es menor que todo")
}

# %% Condicional anidados/Nested Conditions:
n1 <- 23
n2 <- 65

if (n1 > 2) {
  print("Mayor que dos")
  if (n1 > n2) {
    print("yes")
  } else if (n2 > n1) {
    print("No")
  }
}

# %% Condicional ejemplo clave Vectorizacion else if:
parametro <- c(34, 21, -3.90, -4, 2)

ifelse(parametro > 0, parametro, parametro - 1)


# %% Condicional Switch:
opcion <- "c"

resultado <- switch(opcion,
                    a = "Eleccion A",
                    b = "Eleccion B",
                    c = "Eleccion C",
                    "opcion no valida")
print(resultado)
#>Switch devuelve "Eleccion C"

# %% Condicional Switch con numeros:
nota_estudiantes <- c(85, 92, 78, 90, 88, 95, 67, 73, 84, 91)
corte <- 70
ifelse(nota_estudiantes >= corte,
       "Aprobado",
       "Reprobado")
#>Devuelve un vector con "Aprobado" y "Reprobado" segun las notas
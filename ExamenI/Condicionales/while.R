#👀🐱‍👤🐱‍🐉%% Bucle While en R:
cuenta <- 1
while (cuenta <= 10) {
  print(paste("Cuenta es:", cuenta))
  cuenta <- cuenta + 1
}
#%% Sentencia while conta
conta <- 1
while (conta <= 5) {
  print(paste("Contador vale:", conta))
  conta <- conta + 1
}
#%% Numero telefeno
telefono <- readline(prompt = "Ingrese su número telefónico (8 dígitos): ")

while (nchar(telefono) != 8) {
  cat("Error: El número telefónico debe tener exactamente 8 dígitos.\n")
  telefono <- readline(prompt = "Ingrese su número telefónico (8 dígitos): ")
}
cat("Número telefónico válido ingresado:", telefono, "\n")
#%% Validar edad
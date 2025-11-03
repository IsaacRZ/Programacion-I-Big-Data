#%% Bucle While en R:
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

#>while (nchar(telefono) != 8 || !grepl("^[0-9]+$", telefono)) {
#>while (nchar(telefono) != 8 {
#>  telefono <- readline(prompt = "Número inválido. Ingrese un número telefónico
#>  válido (8 dígitos): ")
#>}
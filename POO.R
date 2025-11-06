library(R6)

# Definimos la Clase "Cuenta"
Cuenta <- R6Class(
  "Cuenta",

  # ==========================================================
  # Atributos (Datos)
  # ==========================================================
  
  # Los 'private' son los atributos encapsulados.
  # Solo los métodos de esta clase pueden verlos o modificarlos.
  private = list(
    .numero_cuenta = NULL,
    .id_cliente = NULL,
    .saldo = 0
  ),
  
  # 'active' nos permite crear "getters" (lectores) públicos
  # sin dar acceso directo a la variable privada.
  # Esto es ENCAPSULAMIENTO puro.
  active = list(
    # Para leer el saldo: cuenta$saldo
    saldo = function() {
      return(private$.saldo)
    },
    
    # Para leer el número: cuenta$numero
    numero = function() {
      return(private$.numero_cuenta)
    },
    
    # Para leer el cliente: cuenta$cliente
    cliente = function() {
      return(private$.id_cliente)
    }
  ),

  # ==========================================================
  # Métodos (Comportamiento)
  # ==========================================================
  public = list(
    
    # --- El Constructor ---
    # Se llama automáticamente cuando creamos un objeto con $new()
    initialize = function(numero_cuenta, id_cliente, saldo_inicial = 0) {
      private$.numero_cuenta <- numero_cuenta
      private$.id_cliente <- id_cliente
      private$.saldo <- saldo_inicial
      
      cat("✅ ¡Cuenta", private$.numero_cuenta, "creada para el cliente", private$.id_cliente, "!\n")
    },
    
    # --- Método Depósito ---
    # Este es un "mensaje" que la cuenta puede recibir
    deposito = function(monto) {
      if (monto <= 0) {
        cat("Error: El monto a depositar debe ser positivo.\n")
        return(FALSE) # Indicamos que la operación falló
      }
      
      # Modificamos el estado interno (el atributo privado)
      private$.saldo <- private$.saldo + monto
      cat("Depósito exitoso. Nuevo saldo: $", private$.saldo, "\n", sep = "")
      return(TRUE)
    },
    
    # --- Método Retiro ---
    retiro = function(monto) {
      if (monto <= 0) {
        cat("Error: El monto a retirar debe ser positivo.\n")
        return(FALSE)
      }
      
      if (monto > private$.saldo) {
        cat("Error: Fondos insuficientes. Saldo actual: $", private$.saldo, "\n", sep = "")
        return(FALSE)
      }
      
      # Modificamos el estado
      private$.saldo <- private$.saldo - monto
      cat("Retiro exitoso. Nuevo saldo: $", private$.saldo, "\n", sep = "")
      return(TRUE)
    },
    
    # --- Método Transferencia ---
    # ¡Aquí vemos objetos interactuando!
    transferencia = function(monto, cuenta_destino) {
      cat("--- Iniciando Transferencia ---\n")
      
      # Verificamos los fondos en esta cuenta (self)
      if (monto <= 0) {
        cat("Error: El monto a transferir debe ser positivo.\n")
        return(FALSE)
      }
      if (monto > private$.saldo) {
        cat("Error: Fondos insuficientes para transferir.\n")
        return(FALSE)
      }
      
      # ¡Éxito! Retiramos de esta cuenta
      # Nota: Usamos 'self' para referirnos a los métodos del objeto actual
      if (self$retiro(monto)) {
        
        # Y depositamos en la OTRA cuenta (enviamos un mensaje al otro objeto)
        # Nota: NO tocamos el 'private$.saldo' de la otra cuenta.
        # Usamos su método público 'deposito'. ¡Eso es encapsulamiento!
        cuenta_destino$deposito(monto)
        
        cat("Transferencia completada.\n")
        cat("-------------------------------\n")
        return(TRUE)
      } else {
        # Esto no debería pasar si ya chequeamos, pero es buena práctica
        cat("Transferencia fallida.\n")
        cat("-------------------------------\n")
        return(FALSE)
      }
    }
  )
)
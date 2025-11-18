#Working Directory del Proyecto
setwd("~/Big Data/ProgramacionI") # ctrl + shift + H 

#LIMPIEZA GLOBAL ENV
#------------------#
rm(list = ls())
#------------------#


#=====================================
#           PROYECTO PROGRAMACIÓN I
#=====================================
#=====================================
#Integrantes <- c( Sebastián Calvo,  
#                 Jafet Calvo, 
#                 Isaac Rodríguez )
#=====================================


#=============================================================================
#           SISTEMA DE GESTION DE NOTAS ESTUDIANTILES
#=============================================================================

# ---- CONSTANTES y archivo CSV ----
CORTE_APROBACION <- 70
NUM_ESTUDIANTES <- 3
NUM_MATERIAS <- 3
NOMBRE_ARCHIVO <- "Notas2C.csv"
# --------------------------

# ---- Funcion Auxiliar: Validacion ingreso de datos numericos ---------
# ---- Asegurar numero entre 0 y 100 -----------------------------------

validar_nota <- function(mensaje, intento = 1) {
  #Almacenar prompt del usuario temporal
  entrada <- readline(prompt = mensaje)
  
  # Convertir a numerico o devolver NA y suprimir alertas ⚠
  nota <- suppressWarnings(as.numeric(entrada)) 
  
  #Verificar que sea un numero valido 
  if (is.na(nota)) {
    cat("❌Error\n Ingrese un numero valido (0-100). \n")
    return(validar_nota(mensaje,intento + 1)) #REINICIAR LA FUNCION 
  } else if (nota < 0 || nota > 100 ) {
    cat ("☣ Error. El numero debe estar entre 0 y 100")
    return(validar_nota(mensaje,intento + 1)) #REINICIAR LA FUNCION 
  } else {
    return(nota) #NOTA VALIDA
  }
}
# -----------------------------------------------------------------------

#=============================================================================
#           PARTE I: INGRESO DE DATOS
#=============================================================================
cat("\n")
cat("============================================================================")
cat("           SISTEMA DE CALIFICACIONES ESTUDIANTILES          ")
cat("=============================================================================")
cat("\n")
cat(" 📊 Configuracion del sistema.\n")
cat(paste("   • Número de estudiantes:", NUM_ESTUDIANTES, "\n"))
cat(paste("   • Materias por estudiante:", NUM_MATERIAS, "\n"))
cat(paste("   • Nota mínima de aprobación:", CORTE_APROBACION, "\n"))
cat("\n")

#Columnas del DF
columnas <- c("Nombre", 
              "Nota_Materia1", "Aprobado_M1", 
              "Nota_Materia2", "Aprobado_M2", 
              "Nota_Materia3", "Aprobado_M3")

# Inicializamos el DF vacío
df_calificaciones <- data.frame(matrix(ncol = length(columnas), nrow = 0))
colnames(df_calificaciones) <- columnas
# Esperamos que el usuario esté listo para comenzar
readline(prompt = "Presione ENTER para comenzar el ingreso de datos...")


# --- BUCLE PRINCIPAL DE CAPTURA DE DATOS ---
for (i in 1:NUM_ESTUDIANTES) {
  
  cat("\n")
  cat("════════════════════════════════════════════════════════\n")
  cat(paste("   ESTUDIANTE", i, "de", NUM_ESTUDIANTES, "\n"))
  cat("════════════════════════════════════════════════════════\n")
  
  # Capturamos las calificaciones con validación
  n1 <- validar_nota("  📝 Calificación de Materia 1 (0-100): ")
  n2 <- validar_nota("  📝 Calificación de Materia 2 (0-100): ")
  n3 <- validar_nota("  📝 Calificación de Materia 3 (0-100): ")
  
  # Calculamos el estado de aprobación (TRUE/FALSE) para cada materia
  ap1 <- n1 >= CORTE_APROBACION
  ap2 <- n2 >= CORTE_APROBACION
  ap3 <- n3 >= CORTE_APROBACION
  
  # Calculamos el promedio individual 
  promedio_individual <- mean(c(n1, n2, n3))
  
  # Mostramos un resumen inmediato al usuario
  cat("\n  ✅ Datos registrados:\n")
  cat(sprintf("     Materia 1: %.2f [%s]\n", n1, ifelse(ap1, "✓ Aprobado", "✗ Reprobado")))
  cat(sprintf("     Materia 2: %.2f [%s]\n", n2, ifelse(ap2, "✓ Aprobado", "✗ Reprobado")))
  cat(sprintf("     Materia 3: %.2f [%s]\n", n3, ifelse(ap3, "✓ Aprobado", "✗ Reprobado")))
  cat(sprintf("     Promedio: %.2f\n", promedio_individual))
  
  # Creamos la fila con los datos del estudiante
  nueva_fila <- data.frame(
    Nombre = paste0("Estudiante_", i),
    Nota_Materia1 = n1, Aprobado_M1 = ap1,
    Nota_Materia2 = n2, Aprobado_M2 = ap2,
    Nota_Materia3 = n3, Aprobado_M3 = ap3,
    stringsAsFactors = FALSE  # Evitamos conversión automática a factores
  )
  # Agregamos la fila al Data Frame principal
  df_calificaciones <- rbind(df_calificaciones, nueva_fila)
}

#=============================================================================
#           PARTE II: ANALISIS RESULTADOS
#=============================================================================
#PROMEDIO POR ESTUDIANTE:
promedios_estudiante <- numeric(NUM_ESTUDIANTES)

for (i in 1:NUM_ESTUDIANTES){
  notas <- c(
    df_calificaciones$Nota_Materia1[i],
    df_calificaciones$Nota_Materia2[i],
    df_calificaciones$Nota_Materia3[i])
  promedios_estudiante[i] <- mean(notas)
}

#Nueva columna promedios
df_calificaciones$Promedio_Individual <- round(promedios_estudiante,2)
cat("Se agregó una nueva columna con los promedios individuales: ✔ \n")
print(df_calificaciones)

#PROMEDIO GENERAL:
# -----------------------------------------------------------------------
todas_las_notas <- c( df_calificaciones$Nota_Materia1,
                      df_calificaciones$Nota_Materia2,
                      df_calificaciones$Nota_Materia3)
promedio_general <- mean(todas_las_notas)
cat("Promedio general es:", round(promedio_general,2))

#CALIFICACION MAS BAJA
nota_minima <- min(todas_las_notas)
cat("La nota minima es: ", nota_minima)

#CALIFICACION MAS ALTA
nota_maxima <- max(todas_las_notas)
cat("La nota minima es: ", nota_maxima)

#=============================================================================
#           PARTE III: EXPORTACIÓN DE DATOS 
#=============================================================================
cat("\n")
cat("💾 Guardando datos en archivo CSV...\n")

# Intentamos guardar el archivo con manejo de errores
resultado_guardado <- tryCatch({
  write.csv(df_calificaciones, 
            file = NOMBRE_ARCHIVO, 
            row.names = TRUE,  #  incluimos números de fila
            fileEncoding = "UTF-8")  # Codificación para caracteres especiales
            TRUE
}, error = function(e) {
  cat(paste("   ⚠️  ERROR al guardar:", e$message, "\n"))
  FALSE
})

if (resultado_guardado) {
  cat(paste("   ✅ Archivo guardado exitosamente:", NOMBRE_ARCHIVO, "\n"))
  cat(paste("   📁 Ubicación:", getwd(), "\n"))
} else {
  cat("   ❌ No se pudo guardar el archivo.\n")
}


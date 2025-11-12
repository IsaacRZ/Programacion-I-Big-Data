setwd("~/Big Data/ProgramacionI")
rm(list = ls()) # Remover todas las variables

#Creación de Matriz Aleatoria
vector_aleaotorio <- sample(1:12)
matriz_aleatorio <- matrix(vector_aleaotorio, nrow=3, ncol=4)

rownames(matriz_aleatorio) <- paste("Fila",1:3)
colnames(matriz_aleatorio) <- paste("Columna",1:4)

#Row 2, Col 3
matriz_aleatorio[2,3]
#First Row


#Matrices 2x2
a <- matrix(c(1:4),nrow=2)
b <- matrix(c(5:8),nrow=2)

#a + b
sum <- a + b
#a * b
product <- a * b
#a %% b
matricial <- a %% b

#sUMA row
suma_row <- apply(matriz_aleatorio, MARGIN = 1, sum)
#sUMA col
suma_col <- apply(matriz_aleatorio, MARGIN = 2, sum)

#Matriz logica
matriz_logica <- matriz_aleatorio > 6
#matriz_mayor_6 <- matriz_aleatorio[matriz_logica] NO FUNCIONO 

# 
M <- matrix(1:9, nrow = 3, byrow = TRUE)

determinante <- det(M)
# SI det == 0 ; matriz singular no tiene inversa
inversa1 <- solve(M)

#Matriz condicional pares
condicion_par_log <- matriz_aleatorio %% 2 == 0
condicion_par <- matriz_aleatorio[condicion_par_log]

#Goles por partido
goles <- matrix(c(
  2, 1, # Partido 1: A vs B
  0, 3, # Partido 2: B vs C
  1, 1, # Partido 3: C vs A
  4, 2 # Partido 4: A vs C
), ncol = 2, byrow = TRUE)
colnames(goles) <- c("Equipo1", "Equipo2")
rownames(goles) <- paste("Partido", 1:4)


#GOLES Recibió A 
recibido_A <- goles[1,2] + goles[3,1] +goles[4,2]

#GOLES Recibió B 
recibido_B <- goles[1,1] + goles[2,2]

#GOLES Recibió C 
recibido_C <- goles[2,1] + goles[3,2] +goles[4,1]

#GOLES hechos A 
hechos_A <- goles[1, 1] + goles[3,2] + goles[4,1]

#GOLES hechos B
hechos_B <- goles[1, 2] + goles[2, 1]

#GOLES hechos C
hechos_C <- goles[2, 2] + goles[3, 1] + goles[4, 2]

#Equipo record


#Equipo que recibió mas goles
equipo_masgoleado_nombre <- function(recibido_A,recibido_B,recibido_C){
  equipo_goleado <- "Equipo A"
  goleado_maximo <- recibido_A
  
  if (recibido_B > goleado_maximo){
    goleado_maximo <- recibido_B
    equipo_goleado <- "Equipo B"
  }
  if (recibido_C > goleado_maximo){
    
    goleado_maximo <- recibido_C
    equipo_goleado <- "Equipo C"
  }
  return(equipo_goleado)
}
equipo_masgoleado_nombre(recibido_A,recibido_B,recibido_C)

#Equipo goleador
equipo_goleador_nombre <- function(hechos_A,hechos_B,hechos_C){
equipo_record <- "Equipo A"
goles_maximo <- hechos_A
  
  if (hechos_B > hechos_A){
  goles_maximo <- hechos_B
  equipo_record <- "Equipo B"
  }
  if (hechos_C > goles_maximo){
    
  goles_maximo <- hechos_C
  equipo_record <- "Equipo C"
  }
return(equipo_record)
}
equipo_goleador_nombre(hechos_A,hechos_B,hechos_C)

# 11 Matriz Equipos y Jornadas
# Equipos: A, B, C
# Jornadas: 1 a 4
goles_jornada <- matrix(c(
  1, 2, 0, 3, # Equipo A
  0, 1, 2, 1, # Equipo B
  2, 1, 1, 0 # Equipo C
), nrow = 3, byrow = TRUE)
rownames(goles_jornada) <- c("A", "B", "C")
colnames(goles_jornada) <- paste("Jornada", 1:4)

#Extraiga la siguiente información:
#  A. ¿Cuál fue el total de goles anotados por el equipo B?
goles_B <- sum(goles_jornada[2,])
#  B. ¿En qué jornada se anotaron más goles en total?
total_por_jornada <- apply(goles_jornada, MARGIN =2, sum)
 jornada_con_mas_goles <- which.max(total_por_jornada)

#  C. Agregue una columna con el total de goles por equipo.
totales_equipo <- apply(goles_jornada, MARGIN = 1, sum)
goles_jornada_totales <- cbind(goles_jornada, Total = totales_equipo)

#  D. Es posible determinar cuál equipo fue el más regula -> Menor desviacion estandar
#Desviacion estandar: dispersos o variables son los datos
regularidad_por_equipo <- apply(goles_jornada, MARGIN = 1, sd)
regularidad_por_equipo[which.min(regularidad_por_equipo)]


#12. Crea tu propia matriz para representar los goles en un torneo con 5 equipos, donde cada
# equipo juega contra los otros una vez (partidos únicos).
resultados_inventados <- c(
  2, 1, # A vs B
  1, 1, # A vs C
  3, 0, # A vs D
  0, 2, # A vs E
  4, 1, # B vs C
  1, 1, # B vs D
  2, 0, # B vs E
  0, 3, # C vs D
  1, 2, # C vs E
  3, 1  # D vs E
)

torneo_5_equipos <- matrix(resultados_inventados, nrow = 10, byrow = TRUE)
rownames(torneo_5_equipos) <- paste("Jornada", 1:10)
colnames(torneo_5_equipos) <- c("Goles_Local","Goles_Visitante")
str(torneo_5_equipos)


# Represente quién anotó a quién y extraiga la siguiente información:
#  A. ¿Cuál fue el partido con más diferencia de goles?
diferencia_goles <- abs(torneo_5_equipos[, 1] - torneo_5_equipos[, 2])
diferencia_goles <- abs(torneo_5_equipos[, "Goles_Local"] - torneo_5_equipos[, "Goles_Visitante"])
# La diferencia máxima:
diferencia_maxima <- max(diferencia_goles)            #[i]
fila_max_diferencia <- which.max(diferencia_goles)    #Col Diferencia goles
# El resultado del partido es:
partido_record <- torneo_5_equipos[fila_max_diferencia, ]
  

#  B. ¿Cuál equipo fue el más efectivo (goles anotados – goles recibidos)?
#A_local <- torneo_5_equipos[1:4, 1]   # FORMA 
#A_visit <- torneo_5_equipos[1:4, 2]   # LENTA DE HACERLO

equipos_local <- c("A","A","A","A","B","B","B","C","C","D"   )

equipos_visitante <- c("B","C","D","E","C","D","E","D","E","E")
  
torneo_df <- data.frame(
  Local = equipos_local,
  Visitante = equipos_visitante,
  Goles_Local = torneo_5_equipos[, 1],
  Goles_Visitante = torneo_5_equipos[, 2]
)

#Tapply
#Goles anotados totales Local
ga_local <- tapply(torneo_df$Goles_Local, torneo_df$Local, sum)
#Goles totales Visitante
ga_visitante <- tapply(torneo_df$Goles_Visitante, torneo_df$Visitante, sum)

#Aggregate
# Sumar GA cuando el equipo es LOCAL
ga_local_agg <- aggregate(Goles_Local ~ Local, data = torneo_df, sum)
# Sumar GA cuando el equipo es VISITANTE
ga_visitante_agg <- aggregate(Goles_Visitante ~ Visitante, data = torneo_df, sum)
  
#Goles anotados totatles
ga_totales <- ga_local_agg + ga_visitante_agg
print(paste("GOLES ANOTADOS (GA): ", ga_totales))
  
  
  
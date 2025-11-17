rm(list = ls())
n1 <- 100
n2 <- 400
ap1 <- TRUE
cat(sprintf("     Materia 1: %.2f %.2f [%s]\n", n1,n2, ifelse(ap1, "✓ Aprobado", "✗ Reprobado")))
                            # %.2f -> marcador especial 2 decimales float
                            # %.s  -> marcador especial string 
cat(sprintf("     Materia 1: %.2f [%s]\n", n1, ifelse(ap1, "✓ Aprobado", "✗ Reprobado")))

factorial_recursivo <- function(n){
  if (n == 0 ){
    return(1)
  } else {
    return(n * factorial_recursivo(n - 1 ))
  }
  print(n)
}
factorial_recursivo(4)


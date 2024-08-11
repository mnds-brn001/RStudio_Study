variancia <- function(x) {
  media <- mean(x)
  n <- length(x)
  var <- sum((x - media)^2)/n
  return(var)
}


megasena<-function(njogos){ # cria a função com nome de megasena
  numeros<-matrix(NA,6,njogos) # cria o arquivo que recebe os jogos
  for(i in 1:njogos){
    numeros[,i]<-sample(1:60,6)
  }
  return(numeros)
}

megasena(3)


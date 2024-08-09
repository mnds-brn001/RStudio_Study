# Alguns exercicios de sequência
seq(10,100,10)

seq(1,100,5)

rep(1:4,3)

sample(1:50,5)

sample(c("Cara","Coroa"),10,replace=T)

##### Aplicação Prática #####
# Representa o lançamento de 5 Dados

# Lanço um Dado de 5 Faces, 5 vezes
sample(c(1,2,3,4,5),5)

# Lance um Dado de 6 Faces, 2 vezes
sample(c(1,2,3,4,5,6),2)

# De 30 clientes escolha aleatoriamente 5
escolhidos<-sample(1:30,5, replace=F)


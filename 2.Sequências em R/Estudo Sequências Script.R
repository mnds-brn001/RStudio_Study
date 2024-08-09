####### Sequência no R ######

# Inicializando listas

produtos<- c("TV","Refrigerador","Notebook","Celular")
quantidades<-c(30,36,20,15)

##### Criação #####

# Uma Sequência que vai de 1 até 20 no passo de 1 em 1
1:20

# Uma Sequência que vai de 15 até 20 no passo de 1 em 1
15:20


##### Através de Vetores e Argumentos ####

# Sequêncie de 1 até 25, ao passo de 2
seq(1,25,2)

# Sequêncie de 1 até 25, ao passo de 0.5
seq(1,25,0.5)


#### Criando Sequência Por Repetição ####

# Uma Sequência de 4 Vetores, Preenchido por 3
rep(3,4)  

# Uma Sequência de 1 até o 4 que repete por 5 vezes
rep(1:4,5) 

# Da Lista Produtos repete 3x, 2x cada um
rep(produtos,3,each=2)

## Por Amostras Aleatórias ##

#Sample('de':'até',NVariáveis)

# Da Sequência de 1 até 30, traga 10 valores aleatórios
sample(1:30,10)

# replace=T, indica que os números aleatórios podem se repetir
sample(1:30,10, replace= T)  
# Valor default sample(1:30,10, replace= F) 

# Adiciona uma sequência a variável doc_produtos, que vai de 100 até 150
doc_produtos <- 100:150


# Acesso a variáveis específicas
doc_produtos[3]
doc_produtos[3:9]  

# Da lista, traga os valores de índice 4 e 10
doc_produtos[c(4,10)]

# Altere o valor do 3º Vetor para o valor de 1002
doc_produtos[3] <-1002  


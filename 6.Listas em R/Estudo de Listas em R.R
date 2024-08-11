####### Listas #######

###### Inicializando Listas #######

clientes_nomes<- c("Roberto","Maria","Marcos","Felipe")
clientes_quant<- c(12,10,22,12)
ID_clientes<-seq(101,104)
novo_cliente<-c(TRUE,FALSE,FALSE,TRUE)

##### Unindo os Objetos #####

### Inicializando Lista
balanço<- list(ID_clientes,clientes_nomes,clientes_quant,novo_cliente)

# Nomeando o acesso aos Índices ( $seq, $nome, $quant, $novo_cliente)

list(ID=seq(101,104),
     nome=c("Roberta","Maria","Marcos","Felipe"),
     quant=c(12,10,22,12),
     novo_cliente=c(TRUE,FALSE,FALSE,TRUE))


### Dando nomes aos objetos da Lista ###


balanço<- list(ID_clientes,
               clientes_nomes,
               clientes_quant,
               novo_cliente,
               matrix(0,4,5) # Apenas uma nova matriz no meio da lista lol
               ,mean)



balanço2<-list(ID=ID_clientes,
               Nomes=clientes_nomes,
               Quantidades=clientes_quant,
               Novo_Cliente=novo_cliente,
               Histórico=matrix(0,4,5),
               Média=mean(clientes_quant))


balanço
names(balanço)<- c("Código do Cliente","Nomes","Quantidades Vendidas","Novo Cliente?","Histórico","Média Vendida")


##### Acessando/Pesquisando Listas #####


balanço$`Código do Cliente`
balanço$Nomes

balanço$`Quantidades Vendidas`
balanço$`Novo Cliente?`

balanço$Histórico

# Ainda está zerada a matriz :x
balanço$`Média Vendida`()


# lista balanço-> lista Nomes/Histórico/ID..., -> Acesso ao seus elementos
balanço[2]
# Acesso ao 2º Termo da lista de Nomes
balanço$Nomes[2] 
balanço$`Quantidades Vendidas`[2]

# Em balanço-> #Nomes; Retorne o 3º e o 4º elementos dos vetores
balanço$Nomes[3:4]

balanço[[1]]
balanço[[2]]
balanço[[3]]
balanço[[4]]
balanço[[5]]

# Nova Variável inicializada, com o 5º Elemento de balanço
historico <- balanço[[5]]

##### Modificando Elementos da Lista ####

balanço$Nomes[3] <- "Paulo"

balanço$`Quantidades Vendidas`[c(1,3)] <-c(13,23)

balanço$`Novo Cliente?`[4]<-FALSE

# Finalmente adicionando valores no Histórico

# Na 1ª Linha adicione os valores: 10,13,11,17,19
balanço$Histórico[1,] <-c(10,13,11,17,19)

# Na 4ª Linha da 3ª Coluna adicione o valor 20
balanço$Histórico[4,3] <-20


################################################################################
# CÓPIA                                                                        #  
balanço<- list(ID_clientes,                                                    #
               clientes_nomes,                                                 #
               clientes_quant,                                                 #
               novo_cliente,                                                   #
               matrix(0,4,5) # Apenas uma nova matriz no meio da lista lol     #
               ,mean)                                                          #
names(balanço)<- c("Código do Cliente","Nomes","Quantidades Vendidas","Novo Cliente?","Histórico","Média Vendida")
balanço$Nomes[3] <- "Paulo"                                                    #
balanço$`Quantidades Vendidas`[c(1,3)] <-c(13,23)                              #
balanço$`Novo Cliente?`[4]<-FALSE                                              #
balanço$Histórico[1,] <-c(10,13,11,17,19)                                      #
balanço$Histórico[4,3] <-20                                                    #
#                                                                              #
###############################################################################


# Na 4ª Linha da 3ª Coluna adicione o valor 20
balanço$Histórico[4,3] <-20


# Remove TODAS as Linhas das Coluna 5
balanço$Histórico <- balanço$Histórico[,-5]

# Remove Toda a 4ª Linha e Toda a 5ª Coluna
balanço$Histórico <- balanço$Histórico[-4,-5]

# Devolve apenas a 1ª Linha sem a 5ª Coluna
balanço$Histórico <- balanço$Histórico[4,-5]

# Remove TODAS as Linhas das Coluna 5
balanço$Histórico <- balanço$Histórico[,-5]


###### Adicionando Nomes ######


# Criando mais elementos para os vetores da Lista
balanço$Nomes[5] <- "Camila"
balanço$Nomes[5:8] <- c("Camila","Fábio","Marta","Patrícia")
balanço$Nomes

#### Diminuindo uma coluna do Histórico #####

balanço$Histórico <- balanço$Histórico[,-5]

# Removendo os Nomes do 5º Vetor até o 8º
balanço$Nomes <- balanço$Nomes[-(5:8)]

#################
balanço$Histórico
#################

##### Nomeando Indices [x,y] #####

colnames(balanço$Histórico)<-c("Jan","Fev","Mar","Abr")

rownames(balanço$Histórico) <- c(balanço$Nomes)

# Acessando a $`Média Vendida`
balanço[6]


##### Removendo Objetos da Lista #####

# Removendo a $`Média Vendida`
balanço<-balanço[-6]


##### Combinação de Listas #####

lista_info <- list(Data="12-10-2024", Gestor="Maurício", Mês_Referência="Outubro")

lista_final<-c(balanço,lista_info)

##### Transformando a Lista em Vetor #####

names(lista_final)

# Retire da Lista seu 1ºíndice
unlist(lista_final)[1]
# Retire da Lista seu 10ºíndice
unlist(lista_final)[10]


lista_final$`Quantidades Vendidas`[2]

# Descompactando toda a Lista: lista_final dentro da variável lista_nova
lista_nova <- unlist(lista_final)

# Acessando ao 4ª Elemento da Lista
lista_nova[10]



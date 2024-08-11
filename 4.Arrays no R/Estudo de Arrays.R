##### ARRAYS ######

#### Criação usando Matrizes ####

# linhas, colunas, matrizes | l c m
# array(elementos, dim, nomes_das_dimensoes)


# Construindo uma Matriz #
# De 1 até 20, com 4 linhas e 5 colunas

A<- matrix(1:20,4,5)

# Criando um Array de 4 linhas, 5 colunas & 2 Matrizes
array(A, dim=c(4,5,2))

# Retirando a dimensão das quantidades de matrizes,
# ficamos com apenas uma matriz
array(A, dim=c(4,5))

# Duas Matrizes de 3 Linhas, 4 Colunas todas Preenchidas com Zeros.
array(0,dim=c(3,4,2))


# Criando um array de 3 Linhas, 2 Colunas em 3 Matrizes
# Dessa vez com Strings
array(c("TV","Geladeira","Rack"),dim=c(3,2,3))

#### Criação Usando Vetores ####

vendas <- c(12,24,30)
produtos <- c("TV","Geladeira","Cama")

### Utilizando Vetores Parametrizados

# Produtos na Primeira Coluna, Vendas na Segunda | Duas Matrizes
array(c(produtos,vendas), dim=c(3,2,2))

# Adicionado mais uma Matriz para construir Vendas_Totais
vendas_totais <-array(c(produtos,vendas), dim=c(3,2,3))

### Nomeando Dimensões ###

# Inicializando as variáveis utilizadas na Nomeação

# L | C | M

# Nomes das Linhas:
nome_linhas <- c("Marcos","João","Maria") 

# Nome das Colunas:
nomes_variaveis <- c("Produtos","Quantidade") 

# Nome da Matriz:
nomes_matrizes <- c("Janeiro","Fevereiro","Março") 



# Nomeando seguindo a ordem de dim=c
# em "dimnames=", através da lista de variáveis
# nome_linha,nome_variáveis, nome_matrizes

vendas_totais <-array(c(produtos,vendas), dim=c(3,2,3), dimnames= list(nome_linhas, nomes_variaveis,nomes_matrizes))

#### Acessando Arrays ####

vendas_totais
dim(vendas_totais)

vendas_totais[]  # l,c,m

#### Acesso as Matrizes, onde estão armazenados os meses ####

vendas_totais[,,1]  # Vendas janeiro
vendas_totais[,,2]  # Vendas fevereiro
vendas_totais[,,3]  # Vendas março

#### Acesso as Colunas, onde estão armazenados os PRODUTOS & QUANTIDADES
#### De TODAS as matrizes

vendas_totais[,1,]
vendas_totais[,1,1:2]  # Coluna 1 de cada matriz = Produtos vendidos em cada mês
vendas_totais[,2,]  # Coluna 2 de cada matriz = Quantidades vendidos em cada mês
vendas_totais[,2,1:3]

#### Acesso as Linhas, onde estão armazenados as Vendas de Marcos, João, Maria etc ... ####
#### Tras o Resultado em TODAS matrizes e Colunas

vendas_totais[1, , ] # a Linha 1 de cada tabela = Produção de Marcos (produtos e quantidades)
vendas_totais[2, , ] # a Linha 1 de cada tabela = Produção de João (produtos e quantidades)
vendas_totais[3, , ] # a Linha 1 de cada tabela = Produção de Maria (produtos e quantidades)


##### Pesquisa Combinando Dimensões ####

# Vendas Janeiro, de Marcos, Joao, Maria, etc ...
vendas_totais[,2,1] 

# Vendas Janeiro, Produtos e Quantidade
vendas_totais[1,,1] 

# Vendas Janeiro, Quantidade, 1ª Linha
vendas_totais[1,2,1] 

# l c m
# Vendas totais de Maria em Março
vendas_totais[3,2,3] 

# Produto vendido por João em Fevereiro
vendas_totais[2,1,2] 


####  Modificando Elementos ####


array(c(produtos,vendas), dim= c(3,2,2))
vendas_totais <-array(c(produtos,vendas), dim= c(3,2,3))


### Reinicializando as Matrizes ####
### Nomeando as Dimensões ####

nomes_linhas <- c("Marcos","João","Maria")
nomes_variaveis <- c("Produtos", "Quantidade")
nomes_matrizes <c("Janeiro","Fevereiro","Março")

vendas_totais <- array(c(produtos,vendas), dim= c(3,2,3), dimnames= list(
                                                                        nome_linhas,nomes_variaveis,nomes_matrizes)
)

### Modificando através de Índices ###
# L C M | Linha Coluna Matriz

# Alterando o Quantidade de TV, de Janeiro
vendas_totais[1,2,1] <- 14

# Alterando o nome do Produto e a Quantidade dele, em Fevereiro
vendas_totais[2,,2] <- c("Freezer",10)

# Alterando a Quantidade Vendida por João e Maria no mês de Março
vendas_totais[2:3,2,3] <- c(34,80)


# "(x,x)" = Este e Este
# "x:x": Deste até Este

# 3ª Matriz, 2ª Coluna e Linhas 1 e 3
vendas_totais[c(1,3),2,3] 

# Alterando a Quantidade Vendida por Marcos e Maria, no mês de Março
vendas_totais[c(1,3),2,3]<- c(20,40)

#### Operações com Arrays ####

# Selecionando todas os valores da 2ª Coluna ( Quantidade )
vendas_totais[,2,]

# Como estão tipadas como Strings, deve-se fazer o tratamento
# Ainda estão como as.character(vendas_totais)
sum(vendas_totais[,2,]) 

as.numeric(vendas_totais[,2,])
# Transformando as Strings em Números
sum(as.numeric(vendas_totais[,2,]))

# Maior número de Vendas em Janeiro
max(as.numeric(vendas_totais[,2,1]))

##### Dica Extra #####

vendas_sem1<- c(12,10,8)
vendas_sem2<- vendas_sem1*2
vendas_sem3<- vendas_sem1*3
vendas_sem4<- vendas_sem3+15

array(c(vendas_sem1,vendas_sem2,vendas_sem3,vendas_sem4), dim=c(3,4,3))

# Nomeando L | C | M

nomes_linhas <-  c("Marcos","João","Maria")
nomes_variaveis <- c("Semana 1","Semana 2","Semana 3","Semana 4" )
nomes_matrizes <- c("Janeiro","Fevereiro","Março")

vendas_totais<-array(c(vendas_sem1,vendas_sem2,vendas_sem3,vendas_sem4), dim=c(3,4,3),
      dimnames= list(nomes_linhas,nomes_variaveis,nomes_matrizes))


# aplica(em todas as linhas,na segunda coluna, a fórmula de soma)
# soma das colunas em em todas as matrizes
apply(vendas_totais, 2, sum)

# aplica( através de vendas totais, em suas linhas ( quantidade de vendas)
# a operação de soma 
apply(vendas_totais,1, sum)

# Calculando a média de Quantidade Vendidades de cada Cliente
apply(vendas_totais,1, mean)


    
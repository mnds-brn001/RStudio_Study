### SHIFT + ENTER em cima da linha/código para rodar o código
### Rode múltiplas linhas com SHIFT + SETA ou usando mouse


#### Criação de Vetores

vendas <-c(12,15,3,5)
meses<-c("Jan","Fev","Mar","Abri")

Gênero <- c("Masculino","Feminino")

##### Acessando elementos #####

vendas
meses

##### Lista começa sempre em 1 | [ 1, 2, 3, 4, ...]

#Acessa 1º Vetor
vendas[1]
#Acessa 4º Vetor
vendas[4]

# Da lista de vetores, escolha o 1º e o 4º vetor
vendas[c(1,4)]

# Da lista de vetores, escolhe os vetores do 1º ao 3º
vendas[1:3]


##### Modificando Vetores

# Acesse o terceiro vetor E altere seu valor para 13
vendas[3] <- 13

# Acesse o quarto vetor E altere seu valor para 15
vendas[4] <- 15

# Acesse os vetores do 1º e 4º e então altere seus valores
# para 0 e 90, respectivamente
vendas[c(1,4)] <- c(0,90)

# Acesse os vetores do 2º até o 4º e então altere
# seus valores para 40, 35 e 90 respectivamente
vendas[2:4] <- c(40,35,28)


# Do mesmo jeito pra Números também serve para Strings
# Do vetor 3º até o 4, altere os valores para:
# "Março", "Abril" | Respectivamente
meses[3:4]<-c("Março","Abril")
meses


# Omite o valor, sem excluí-lo
#vendas[-4]

# Exclui o Vetor
vendas <- vendas[-4]
# Pesquisa-lo apos o comando não funcionará
vendas[4] 

# Adicionando um novo valor kkkk
vendas[4] <- 70

# Adicionando novos vetores e valores
vendas[5:7] <- c(23,43,15) 
vendas

# Agora com 7 vetores
length(vendas)

###### Operações 

vendas

vendas + 2
vendas - 2

vendas * 2
vendas /2

vendas ^ 2 
vendas ^ 3

log(vendas)

# Calculará a média da soma de todos os itens
# da Lista
mean(vendas)

# Tras o maior valor dentro da Lista
max(vendas)

# Tras o menor valor de dentro da lista
min(vendas)

sqrt(vendas)

# Ordena de modo Ascendente
sort(vendas)

# Ordena de modo Decrescente
sort(vendas, decreasing = T)

##### Operações Para Atualização do vetor ######

vendas <- vendas + vendas*2

# Criando Nova Variável de venda
vendas_v1 <- vendas
vendas_v2 <- c(15,30,40,24,32,31,80)

###### Operações com Duas Listas #######

# Soma cada vetor correspondente da outro lista
# Trazendo uma Lista Nova com os Valores Atualizados
vendas_v1 + vendas_v2

# Subtrai cada vetor correspondente da outro lista
# Trazendo uma Lista Nova com os Valores Atualizados
vendas_v1 - vendas_v2

# Fazendo uma operação com 3 Listas múltiplicado por 4
vendas_v1 - vendas_v2 + vendas  *4


# Removendo um Índice da tabela vendas_v1
vendas_v1 <- vendas_v1[-1]

# Operação
# Acho que o último números de ambas as listas
# também se somaram v_v1[6] + v_v2[7]
vendas_v1 + vendas_v2

###### União, interseção  ###########
###### e diferenças de Vetores  #############S


# Iniciando Listas
vendedor1 <- c("Adidas","Nike","Olympikus")
vendedor2 <- c("Adidas","Mizuno", "Topper")

# Une todas as Listas mas sem repetir o conteúdo     
union(vendedor1,vendedor2)

# Retornar uma Lista apenas com o valor em comum
intersect(vendedor1,vendedor2)

# Retorna uma Lista com O que tem na 1º Lista Mas não está na 2º Lista
setdiff(vendedor2,vendedor1)
# Outro exemplo:
setdiff(vendedor1,vendedor2)


# Iniciando Novas Listas
arroz_marcas <- c("Camil","Tio Joao","Prato Fino")
feijao_marcas <- c("Kicaldo","Milano","Urbano")
               
### interaction() resulta em um fator
### Variável categórica
interaction(arroz_marcas,feijao_marcas)

## Data frame com todas as combinações
expand.grid(arroz_marcas,feijao_marcas)
              
# Outro exemplo:
a<-c("Camisa 1","Camisa 2")
b<-c("Calca 1","Calca 2","Calca 3")
expand.grid(a,b)
               
               
#### Vetores Lógicos / Booleanos

# Iniciando novas Listas               
produtos<- c("TV","Refrigerador","Notebook","Celular")
quantidades<-c(30,36,20,15)

# Verificando valores booleanos com operadores lógicos

# Compara todos os valores da Lista através de um vetor lógico
quantidades > 10
quantidades >= 20
               
quantidades < 10
quantidades >= 20
               
quantidades == 25
quantidades != 25

# Criando outra lista através de operações matemáticas   
quantidades2 <- quantidades * 2
quantidades2

# Quantidades é igual a Quantidades2?               
quantidades == quantidades2
quantidades != quantidades2
quantidades > quantidades2
quantidades < quantidades2
               
               
quantidades[3] == 60

# Em produtos temos "TV"?
produtos == "TV"

# Somas de Vetores com valor "TV"
# Retorna um valor numérico
sum(produtos == "TV")
               
               
#### Identificar índice
#### de um elemento desejado


# Inicializando Lista               
nomes<- c("Maria", "João", "Luiza", "Paula")

# Localiza em qual posição do vetor
# está o elemento 'Paula'
               
match("Paula",nomes)
match("TV", produtos)
match("Notebook",produtos)
math("SSD")
               
# Carregando novas Listas
# Notas de Provas de 9 alunos
prova1<-c(8,9,5,6,7,8,8,8,5)
prova2<-c(2,3,4,3,6,4,2,9,5)
prova3<-c(1,6,2,9,1,10,2,9,2)

# Através da Lista Prova2, devolta uma Lista com
# Valores desta Lista que são Diferentes de 4
length(prova2[prova2 != 4])

# Na Lista Prova1 retorne os valores
# Maiores do que 7
prova1[prova1>6]


# Repopulando as Listas
# 8 vetores

# Metade da turma foi bem 1º Prova
prova1<-c(3,6,4,2,7,8,5,6)
prova1[prova1>=6]
prova1[prova1 < 6]

prova2<-c(6,10,3,6,4,2,7,5)
prova2[prova2>=6]
prova2[prova2< 6]

prova3<-c(10,10,5,7,4,6,2,7)
prova3[prova3>=6]
prova3[prova3< 6]

# Media ponderada de todas as provas
# media<-((prova2+prova1+prova3)/3)
               
prova1 < prova2

# Media de desempenho da Prova1 
mean(prova1)
               
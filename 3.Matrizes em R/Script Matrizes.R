# Inicializando Listas

vendas <-c(12,15,3,5)
produtos<- c("TV","Refrigerador","Notebook","Celular")
quantidades<-c(30,36,20,15)

###### MATRIZES ######

###  cbind: Column Bind, combina os valores e devolve em Colunas
cbind(produtos,quantidades,vendas)
cbind(produtos,quantidades)

### rbind: Row Bind, combina os valores e devolve em Linhas
rbind(produtos,quantidades,vendas)
rbind(produtos,quantidades)

# Atribuindo #
vendas<-cbind(produtos, quantidades)
vendas<-rbind(produtos, quantidades)

### Criação de Matrizes ###


matrix(1:1000, nrow=10, ncol=20)

#matrix(elementos, nrow=, ncol=)
matrix(1:20, nrow=4, ncol=5)
matrix(1:30, nrow=5, ncol=6)
matrix("Brasil", nrow=4, ncol=5)
matrix("1", nrow=4, ncol=5)
matrix(0, nrow=4, ncol=5)

# Contagem Começa pela linha [1,2,3,4,5]
matrix(1:20, nrow=4, ncol=5, byrow= T)

# Opção Default, Começa a contar pela coluna: [1,]
matrix(1:20, nrow=4, ncol=5, byrow= F)#       [2,]
#                                             [3,]
#                                             [4,]

#Exemplo:                               
matrix(1:5, nrow=4, ncol=5, byrow=T)
matrix(1:5, nrow=4, ncol=5, byrow=F)


# Dá erro pois falta linhas para completar    
# a contagem
matrix(1:30, nrow=4, ncol=5, byrow= T)




#### Acessando Vetores Específicos ####

vendas
produtos[3]

# Na 1ª Linha da Lista, Coluna 2, acesse
vendas[1,2]   

# Da 1ª Linha traga todas as Colunas
vendas[1,]

# Da 2ª Coluna me traga todas as suas Linhas
vendas[,2]


# Me traga Todas as Linhas desde a 2º Coluna até a 4ª
vendas[,2:4]

# Me traga Todas as Linhas desde a 1º Coluna até a 4ª
vendas[1,2:4]

# Invertendo a sequência;
vendas[,4:2]


##### Modificando Elementos #####

vendas_Jan<- vendas
vendas_Fev<- vendas_Jan
str(vendas_Fev)

# Acesse todos os elementos da 2ª Linha
# O 'Preço' dos produtos
vendas_Fev[2,]

vendas_Fev[2,]<-as.numeric(vendas_Jan[2,]) + 2
vendas_Fev

# Alterando o Nome dos Produtos da 2ª Lista

vendas_Fev[1,1]<- c("Televisor")

# Acesso e modificação da primeira linha das colunas 3 e 2
vendas_Fev[,3] <- c("PC",40)
vendas_Fev[,2] <- c("Refrigerador",30)

# Na 2ª Linha estão os preços é la que será alterado
vendas_Fev[2,2:4] <- c(37,110,39)


vendas_Fev
# Remoção da 1ª Coluna
vendas_Fev[,-1]
# Remoção da 2ª Linha dos 'Precos'
vendas_Fev[-2,]
# Remoção da 2ª Linha e 1ª Coluna
vendas_Fev[-2,-1]

## Para atualizar as mudanças
# vendas_Fev <- vendas_Fev[-4,]

### Operações com Matrizes ###

# Inicializando Novas Listas
carlos <- c(120,130,400,230)
marcos <- c(20, 334, 420, 130)
maria <- c(22,28,19,10)

# cbind: Column Bind, transforma os valores em Colunas
vendas_Reais <- cbind(carlos,marcos,maria)

# Indica as dimensoes da Referência passada
# Nesse caso 4 linhas x 3 3 colunas
dim(vendas_Reais)

# Retorna o 2º Índice de Dimensões ( 4 x [3] )
dim(vendas_Reais)[2]

# Retorna a quantidade de índices nas Linhas
nrow(vendas_Reais)

# Retorna a quantidade de índices nas Colunas
ncol(vendas_Reais)

#dim()[2] igual a  ncol()
#dim()[1] igual a  nrow()


# Subtruindo um valor de TODOS os Vetores
vendas_Reais - 2
vendas_Reais <-vendas_Reais + 5

# Comissoes valem 10% do valor das Vendas Totais
comissoes <- vendas_Reais *0.10


# Calculos em toda a Matriz

comissoes/2 # Simula o combo de produtos, nesse caso 2 produtos

comissoes ^2

sqrt(comissoes)
log(comissoes)

# Somando aqui todo valor de comissão da 1ª Coluna
# do 'Carlos'
sum(comissoes[,1])

# Media Ponderada de toda a 2ª Coluna
mean(comissoes[,1])

# Calcula a média de vendas de Marcos
mean(vendas_Reais[,1])

# Calcula a média advinda do Nº de Vendas
mean(comissoes)

# Soma o Valor de Todas as Comissões
sum(comissoes)


# Criando as Listas de Janeiro e Fevereiro
Jan<-comissoes *2
Fev<- comissoes

# Somando o valor das Comissões de Janeiro e Fevereiro
Jan + Fev

# Diferença de comissoes dos meses

Jan - Fev

## Operações com as Listas ##
Jan * Fev

Jan %*% Fev

Jan %*% Fev[-3,]

dim(Jan)

# Qual as Dimensões da Matriz Fev sem a 3º Linha
dim(Fev[-3,])


# Curiosidades sobre Matrizes

A<- matrix(0,nrow= 5, ncol=10)
image(A)

A<- matrix(1:50,nrow= 5, ncol=10)

# Plotagem
image(A)

contour(A)
contour(volcano)

persp(A)
persp(volcano)

## Parte II

2 X = 10

solve(2,10)

----
  3X + 2Y = 8
1X + 1Y = 2

### Calculo da Matriz Inversa ###

linha1<-c(3,2,8)
linha2<-c(1,1,2)
A<-rbind(linha1,linha2)

# Lista A: Todas as Linhas, da 1ª a 2ª Coluna
A[,1:2]

# Lista A sem a 3ª Coluna
A[,-3]
solve(A[,1:2],A[,3])
  
4 -2

# Determinante
det(A[,-3]) 
  
# Matriz Transposta
# Linhas Viram Colunas e Vice-Versa
t(A) 

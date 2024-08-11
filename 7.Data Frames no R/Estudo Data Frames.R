###### Criação de Data Frames ######


### Inicializando ###

## 1º Forma ###

fornecedores <- c("A","B","E","D","X")
quant_Jan <- c(120,230,100,340,10)
quant_Fev <- c(220,630,60,50,60)
quant_Mar <- c(520,430,100,34,10)

# Column Bind para juntar os vetores em Colunas
resumo <- cbind(fornecedores,quant_Jan,quant_Fev,quant_Mar)


### 2º Forma ###
# Já da uma limpada visual
resumo_df<-as.data.frame(resumo)

## 3º Forma ##

# Inicializando já dentro do data.frame
data.frame(fornecedores=c("A","B","E","D","X"),
           quant_Jan=c(120,230,100,340,10),
           quant_Fev=c(220,630,60,50,60),
           quant_Mar=c(520,430,100,34,10))


## 4º Forma ##

data.frame(V1=fornecedores,V2=quant_Jan,V3=quant_Fev)

###### Pesquisa em Data Frames ######
resumo_df

### Acessando ua linha específica

####   L | C | M    ######

# Retorna 2ª Linha Inteira
resumo_df[2,]

# Retorna da 2ª Linha até 4ª todas as Colunas
resumo_df[2:4,]

# Retorna a 1ª e a 5ª Linha com todas as Colunas
resumo_df[c(1,5),]

resumo_df$quant_Jan ## == resumo_df[,2]

# Retornando As Linhas e Colunas de Fornecedores e quant_Mar
resumo_df[,c(1,4)]

resumo_df$fornecedores[3]

# 3ª Linha, 1ª Coluna ( fornecedores)
resumo_df[3,1]

#a<- as.factor(a)  #transforma sua variável "a" em um fator

#b<-as.character() #transforma sua variável "b" em um vetor de texto

#c<- as.numeric(c)  #transforma sua variável "c" em um vetor de números

##### Modificando O Data Frame #####

fornecedores<-c("A","B","E","D","X")
quant_Jan<-c(320,230,100,340,10)
quant_Fev<-c(220,630,60,50,60)
quant_Mar<-c(520,430,100,34,10)

# Transformando Variáveis de Character em Fatores
fornecedores<- as.factor(fornecedores)
quant_Jan<- as.factor(quant_Jan)
quant_Fev<- as.factor(quant_Fev)
quant_Mar<- as.factor(quant_Mar)

resumo<-data.frame(fornecedores,quant_Jan,quant_Fev,quant_Mar)

#
resumo$quant_Jan<-as.numeric(resumo$quant_Jan)
resumo$quant_Fev<-as.numeric(resumo$quant_Fev)
resumo$quant_Mar<-as.numeric(resumo$quant_Mar)

str(resumo)

resumo_1<-cbind(fornecedores,quant_Jan,quant_Fev,quant_Mar)
resumo_1<-as.data.frame(resumo_1)

str(resumo_1)

# Pequeno teste, agora recebe operações
resumo_1$quant_Fev + 10

# Acessando as linhas de quant_Jan
resumo_1$quant_Jan

# Transformando o tipo de dado do jeito certo | de Fator para numérico
resumo_1$quant_Jan<-as.numeric(as.character(resumo_1$quant_Jan))
resumo_1$quant_Fev<-as.numeric(as.character(resumo_1$quant_Fev))
resumo_1$quant_Mar<-as.numeric(as.character(resumo_1$quant_Mar))

str(resumo_1)

###### Modificando Elementos ######

resumo$quant_Jan[5] <- 100
                          #2 #3 #4
resumo$quant_Fev[2:4] <- c(640,75,60)

# Acesso e Modificação para o 1º e 4º Vetor
resumo$quant_Mar[c(1,4)] <- c(130,400)

# Dando Nomes aos fornecedores
resumo$fornecedores <- c("Camil","Zaeli","Tio João","Danone","Liza")
resumo


##### Adicionando Novas Colunas com Valores ######

resumo$quant_Abril<-c(230,250,140,320,110)

##### REMOVER VARIÁVEIS DO DATA FRAME #####

# - 5ª Coluna com suas Linhas
resumo <- resumo[,-5]


####### ADICIONANDO CASOS #######
 # Limpar a 4ª Linha e suas Colunas
# resumo[4,] <- c("","","","")

# Adicionando à 6ª Linha
resumo[6,] <- c("Friboi","0","0","55",88)

###### REMOVENDO CASOS ######

resumo <- resumo[-6,]

resumo[6,] <- resumo[-(c(1,4)),]


###### Operaçoes em data.frame() #####

# Conferindo Medidas do data.frame construido
ncol(resumo)
nrow(resumo)

dim(resumo)
dim(resumo)[1] # Linhas
dim(resumo)[2] # Colunas

# Nº de Elementos na Coluna de quant_Jan
length(resumo$quant_Jan) 

names(resumo) # Nome de variáveis


# Visualiza em formato de planilha ( abre nova aba)
View(resumo) 

#
str(resumo)

# Transformando valores de quant de chr para numeric
resumo$quant_Jan <- as.numeric(resumo$quant_Jan)
resumo$quant_Fev <- as.numeric(resumo$quant_Fev)
resumo$quant_Mar <- as.numeric(resumo$quant_Mar)

# Permite Calculos com a quant. agora
summary(resumo)

mean(resumo$quant_Jan)
median(resumo$quant_Jan)

# Standard Deviations
sd(resumo$quant_Jan) 

#######################################
a<-c(1,3,5,7,9)
b<-c(5,6,3,8,9)
c<-c("a","a","b","a","b")

dados<-data.frame(a,b,c)

dados[c(1:5),c(2,3)]







#### Fatores #####

#### Criação de Fatores ####

# Inicializando uma Lista
genero<- c("2","2","1","1","2","3")

# Transformando as.character() em as.factor()
# Adicionando Níveis ao Valores
genero_ft <- as.factor(genero)

str(genero)

# Fator em 3 leveis, "1","2","3"
str(genero_ft)
#

# Iniciando uma Lista já como Fator
a<-factor(c("2","2","1","1","2","3"))
str(a)

#### Acessando e Fatores ####

#   "2","2","1","1","2","3"
genero_ft[3]
genero_ft[2]
genero_ft[2:4]

# Retornando o tamanho da Lista
length(genero_ft)

# Retornando o tamanho da Lista de Fatores
genero_ft[length(genero_ft)]


#### Modificando Fatores #####

# "2","2","1","1","2","3"
genero_ft[2] <- 3


#### Operação com Fatores ####

genero_ft


produtos_online <- factor(c("Produto A","Produto A", "Produto C","Produto B","Produto C","Produto B"))
produtos_pres <- factor(c("Produto C","Produto C", "Produto B","Produto D","Produto A"))
vendas<-fct_c(produtos_online, produtos_pres)


# Adicionando mais valores a Lista de Genero
genero_ft<-factor(c(1,2,2,2,2,3,1,1))

# Gráfico com a distribuição de gêneros
plot(genero_ft)

## Função da biblioteca forcats
library(forcats)

## Alteração de Casos Gerais ##

# Para a: Substitua os valores em genero_ft, com ( ..., ..., ...)
a<-lvls_revalue(genero_ft,c("Masculino","Feminino","Outros"))
plot(a)

levels(genero_ft)<- c("Masculino","Feminino","Outros")
genero_ft
plot(genero_ft)


genero_ft<-factor(c(1,1,3,2,3,1,1,2,3))
plot(genero_ft)

## Alterações de Casos mais específicos ##

# Reescreve para onde está "...", "...", "..."
a<-fct_recode(genero_ft, Masculino="1", Feminino="2", Outros="3")
plot(a)

#### Agrupamento de Níveis ####

como_soube<- factor(c("Internet","INTERNET","net","Google","Pesquisa na Web","amigo","amiga","uma pessoa"))

# Evitando redundância ao combinar Fatores com valores Idênticos
a<-fct_collapse(como_soube, Internet=c("Internet","INTERNET","net","Google","Pesquisa na Web"),
             Amigo=c("amigo","amiga","uma pessoa"))

plot(a)

####################

estado_civil<- factor(c("solteiro","solteiro","viuvo","divorciado","solteiro","casado","casado","união estável","viuvo"))

plot(estado_civil)


# Escolha X mais frequentes 

# Escolhendo os 2 mais frequentes
# Neste há 2 posições com o mesmo número
# de ocorrências
a<-fct_lump(estado_civil, 2,other_level="Outros")
plot(a)


b<-fct_lump(estado_civil, 3,other_level="Outros")
plot(b)


##### Reordenando Níveis #####

## Qualitativa Ordinal
## Exemplo

# Escolaridade

# 1.Fundamental Incompleto
# 2.Fundamental
# 3.Ensino Médio
# 4.Superior
# 5.Pós-graduado

# João - 1
# Maria - 1
# Paulo - 3

escolaridade<- factor(c("Superior","Fundamental","Fundamental",
                        "Pós-Graduado","Ensino_Médio","Superior"))
plot(escolaridade)

## Reordenando ##
a<-fct_relevel(escolaridade,c("Fundamental","Ensino_Médio","Superior","Pós-Graduado"))
plot(a)

# Critérios para Ordenar os Níveis do Fator

# - Ordem Alfabética
# - Ordem Racional -> Ensino Médio < Superior < Mestrado < Doutorado
# - Ordenar por uma variável Externa


faturamento <- c(30,24,12,40,20,30,44,53)
escolaridade <- factor(c("Fundamental","Superior","Mestrado","Doutorado","Doutorado",
                         "Fundamental","Mestrado","Doutorado"))

# Quem tem o maior faturamento?Fundamental, Superior ... ?

# Pela média
fct_reorder(escolaridade,faturamento,mean)

# A soma
fct_reorder(escolaridade,faturamento,sum)

#########

#f<-gl(3,2,labels=c("Recife","Rio de Janeiro","Brasília"))



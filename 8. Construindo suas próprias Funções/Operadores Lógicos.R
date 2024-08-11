######### CRIE SUAS PROPRIAS FUNÇÕES #########

# Evite de se repetir
# Facilita a abstração do código e entendimento dos processos
# Mais fácil de fazer manutenção
# Pode se tornar um Use Case comum se aplicando a várias situações

########### OPERADORES LÓGICOS ######

##### IGUALDADE ( == ) ####

resumo

# == 

resumo$quant_Jan[2] == 100 # FALSE
resumo$fornecedores[2] == "Zaeli"


sum(resumo$quant_Jan[2]) == 400
sum(resumo$quant_Jan[2]) == 230


####### DESIGUALDADE != ##########

resumo$quant_Jan[2] != 100 # FALSE
resumo$fornecedores[2] != "Zaeli"


sum(resumo$quant_Jan[2]) != 400
sum(resumo$quant_Jan[2]) != 230


###### OPERADORES LÓGICOS COMPARATIVOS ########

## < > <= >=

resumo$quant_Jan[2] > 200 # TRUE
resumo$quant_Jan[2] < 200 # FALSE
resumo$quant_Jan[2] >= 200 # FALSE
resumo$quant_Jan[2] <= 200 # TRUE

resumo$quant_Jan[3] < 200



resumo$quant_Fev[4] <= 90
resumo$quant_Fev[4] <= 40

resumo$quant_Fev[4] >= 90
resumo$quant_Fev[4] >= 40

######## DO TIPO CONJUNTO ######

##### ASSOCIAÇÃO DO " & " - INTERSEÇÃO ######
#### Todas as afirmações devem ser VERDADEIRAS

resumo$quant_Mar[3] > 300

(resumo$quant_Mar[3] > 300) & (resumo$quant_Mar[3] < 200) # FALSE - TRUE | RESULT : FALSE
(resumo$quant_Mar[3] < 300) & (resumo$quant_Mar[3] < 200) # TRUE - TRUE | RESULT: TRUE

##### ASSOCIAÇÃO DO " ou " " | "  #########
### FALSE | FALSE = FALSE

(resumo$quant_Fev[4] == 60) | (resumo$quant_Fev[2] >= 650) # TRUE - FALSE | RESULT: TRUE 


######## LOOP FOR() ##########

#for(i in vector 1:10) {
#  //// COMANDOS
#  //// .....
#  //// .....
#  //// .....
#}

fornecedores <- c("A","B","E","D","X")
quant_Jan <- c(320,230,100,340,10)
quant_Fev <- c(220,630,60,50,60)
quant_Mar <- c(520,430,100,34,10)

resumo<- data.frame(fornecedores,quant_Jan,quant_Fev,quant_Mar)
resumo$fornecedores<-c("Camil","Zaeli","Tio João","Danone","Liza")
str(resumo)
resumo


# Novos Pedidos

resumo$quant_Abril <- c(200,300,260,150,430)

# Objetivo: fazer o usuário revisar seu pedido

for (i in 1:nrow(resumo)) {
  cat("Você pediu",resumo$quant_Abril[i],"unidades ao fornecedor",
      resumo$fornecedores[i],".","\nPedido Realizado! \n")
  
}

######## LOOP WHILE() ##########

#while (condition) {
#  //// comandos
#  //// ........
#  //// ........
#}

i<-1

while (i<=nrow(resumo)) {
  cat("Você pediu", resumo$quant_Abril[i], "ao fornecedores",
      resumo$fornecedores[i],".","Pedido Realizado! \n")
  i<- i + 1
}
#### 2º exemplo:

k<-0
while (k==0) {
  print("Continuar Pedido: Sim(0) Não(1)")
  k<-scan()

}

######## DECISION MAKING PROCESS ######

###### IF STATEMENTS ######

# Modificando Colunas
resumo$quant_Abril <- c(130,300,240,145,225) 
resumo$capacidade<- c(460,500,470,190,100)
View(resumo)

#if(condiçao) {
#  //// comandos
#  //// ......
#  //// ......
#  }
i<-1
if (resumo$quant_Abril[i] <= resumo$capacidade[i] ) {
  print("Pedido Aprovado!")
}

##### Complementing; ELSE STATEMENT ######

i<-5
if (resumo$quant_Abril[i] <= resumo$capacidade[i] ) {
  print("Pedido Aprovado!")
} else {
  if(resumo$quant_Abril[i]>1000){print("Pedido absurdamente alto")}
  cat("Desculpe! A quantidade solicitada SUPERA  a capacidade do fornecedor",resumo$fornecedores[i], "\n")
}
################### IF + IF ###############
i<-5
if (resumo$quant_Abril[i] <= resumo$capacidade[i] ) {
  print("Pedido Aprovado!")
}
if (resumo$quant_Abril[i] > resumo$capacidade[i] ) {
  cat("Desculpe! A quantidade solicitada SUPERA  a capacidade do fornecedor",resumo$fornecedores[i], "\n")
}

######## IF + ELSE + FOR() ##########

resumo

for(i in 1:nrow(resumo)) {
  if (resumo$quant_Abril[i] <= resumo$capacidade[i])
{
    print("Pedido Aceito")
} else {
  cat(
    "Atenção! O seu pedido de ",
    resumo$quant_Abril[i],
    "supera o limite de",
    resumo$capacidade[i],
    "\n"
    )
  } # Fim do For
}

###### Funções() #####

##### 1 - Cadastre pedidos novos (continuar cadastrando
### até que o usuário interrompa)

#### 2 - Comparar os pedidos de acordo com o estoque de cada
### fornecedor

# Selecionando a Coluna Fornecedores e Capacidade
tabela_f <- resumo[,c(1,6)]

# Adicionando um uma Nova Lista a tabela_f
tabela_f$Preço<-c(12,14,23,44,20)

# Programa no CLI #
novos_pedidos<- function(nome, tabela_fornecedores) {
  meus_pedidos<-c()
  k<-0
  
  while(k==0){
    
    print("------------------- NOVO PEDIDDO -----------------\n")
    cat("Temos ",nrow(tabela_fornecedores),"fornecedores cadastrados. \n")
    
    for(i in 1:nrow(tabela_fornecedores))
    {
      cat("Quantas quantidades você deseja pedir a ",tabela_fornecedores$fornecedores[i],"?\n")
      meus_pedidos[i]<-scan(n=1) # Cadastro dos pedidos
      
      # Se a quantidade for muito abaixo do limite minimo de 10% da capacidade
      if(meus_pedidos[i]<0.1*tabela_fornecedores$capacidade[i]){
        cat("Pedido Muito Baixo. Ele deve ser maior que ",0.1*tabela_fornecedores$capacidade[i],"unidades. \n")
      }
      
      else{
        
        # Aprovado ou não o pedido solicitado
        if(meus_pedidos[i]<= tabela_fornecedores$capacidade[i]){
          print("Pedido Enviado com sucesso!")
        }
        
        # Caso o pedido esteja acima da capacidade máxima
        if(meus_pedidos[i]>tabela_fornecedores$capacidade[i]){
          cat("Pedido ACIMA do estoque máximo. O pedido deve ser no máximo",tabela_fornecedores$capacidade[i],"unidades. \n")
        }
 
      }
        
      
    } # fim do for
    
    print("------------ Revise seu pedido ------------ \n")
    tabela_fornecedores$Pedidos<-meus_pedidos
    print(tabela_fornecedores)
    
    print("------------- DIGITE 0 (Continuar cadastrando) ------- 1 (Finalizar Pedido)")
    k<-scan(n=1)
    
    
  } # Fim While
  
  return(tabela_fornecedores)
} # Fim Função


 
novos_pedidos(nome="Isaias",tabela_fornecedores = tabela_f)






###### Criação de Data Frames ######

## 1º Forma

fornecedores <- c("A","B","E","D","X")
quant_Jan <- c(120,230,100,340,10)
quant_Fev <- c(220,630,60,50,60)
quant_Mar <- c(520,430,100,34,10)

resumo <- cbind(fornecedores,quant_Jan,quant_Fev,quant_Mar)


## 2º Forma
resumo_df<-as.data.frame(resumo)

## 3º Forma
data.frame(fornecedores=c("A","B","E","D","X"),
           quant_Jan=c(120,230,100,340,10),
           quant_Fev=c(220,630,60,50,60),
           quant_Mar=c(520,430,100,34,10))


## 4º Forma
data.frame(V1=fornecedores,V2=quant_Jan,V3=quant_Fev)

###### Pesquisa em Data Frames ######
resumo_df

### Acessando ua linha específica

resumo_df[2,]

resumo_df[2:4,]

resumo_df[c(1,5),]

resumo_df$quant_Jan ## == resumo_df[,2]

resumo_df[,c(1,4)]

resumo_df$fornecedores[3]
resumo_df[3,1]

#a<- as.factor(a)  #transforma sua variável "a" em um fator

#b<-as.character() #transforma sua variável "b" em um vetor de texto

#c<- as.numeric(c)  #transforma sua variável "c" em um vetor de números

##### Modificando O Data Frame #####

fornecedores<-c("A","B","E","D","X")
quant_Jan<-c(320,230,100,340,10)
quant_Fev<-c(220,630,60,50,60)
quant_Mar<-c(520,430,100,34,10)
fornecedores<- as.factor(fornecedores)

quant_Jan<- as.factor(quant_Jan)
quant_Fev<- as.factor(quant_Fev)
quant_Mar<- as.factor(quant_Mar)

resumo<-data.frame(fornecedores,quant_Jan,quant_Fev,quant_Mar)

resumo$quant_Jan<-as.numeric(as.character(resumo$quant_Jan))
resumo$quant_Fev<-as.numeric(as.character(resumo$quant_Fev))
resumo$quant_Mar<-as.numeric(as.character(resumo$quant_Mar))

str(resumo)

resumo_1<-cbind(fornecedores,quant_Jan,quant_Fev,quant_Mar)
resumo_1<-as.data.frame(resumo_1)

str(resumo_1)

resumo_1$quant_Fev + 10 # Não dá certo
resumo_1$quant_Jan

# Transformando o tipo de dado do jeito certo | de Fator para numérico
resumo_1$quant_Jan<-as.numeric(as.character(resumo_1$quant_Jan))
resumo_1$quant_Fev<-as.numeric(as.character(resumo_1$quant_Fev))
resumo_1$quant_Mar<-as.numeric(as.character(resumo_1$quant_Mar))

str(resumo_1)

###### Modificando Elementos ######

resumo$quant_Jan[5] <- 100

resumo$quant_Fev[2:4] <- c(640,75,60)

resumo$quant_Mar[c(1,4)] <- c(130,400)



resumo$fornecedores <- c("Camil","Zaeli","Tio João","Danone","Liza")
resumo


##### ADICIONANDO VARIÁVEIS ######

resumo$quant_Abril<-c(230,250,140,320,110)

##### REMOVER VARIÁVEIS DO DATA FRAME #####

resumo <- resumo[,-5]


####### ADICIONANDO CASOS #######

# resumo[4,] <- c("","","","")
resumo[6,] <- c("Friboi","0","0","55")

###### REMOVENDO CASOS ######

resumo <- resumo[-6,]

resumo[6,] <- resumo[-(c(1,4)),]


###### OPERAÇÕES EM DATA FRAME #####

ncol(resumo)
nrow(resumo)

dim(resumo)
dim(resumo)[1] # Linhas
dim(resumo)[2] # Colunas

length(resumo$quant_Jan) # Nº de Elementos

names(resumo) # Nome de variáveis

View(resumo) # Visualiza em formato de planilha ( abre nova aba)


str(resumo)

resumo$quant_Jan <- as.numeric(resumo$quant_Jan)
resumo$quant_Fev <- as.numeric(resumo$quant_Fev)
resumo$quant_Mar <- as.numeric(resumo$quant_Mar)


summary(resumo)

mean(resumo$quant_Jan)
median(resumo$quant_Jan)
sd(resumo$quant_Jan) # SD = Desvio Padrão


a<-c(1,3,5,7,9)
b<-c(5,6,3,8,9)
c<-c("a","a","b","a","b")

dados<-data.frame(a,b,c)

dados[c(1:5),c(2,3)]





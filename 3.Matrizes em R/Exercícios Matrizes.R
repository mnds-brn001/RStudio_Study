###### Exercícios Matrizes ######

cadastro <- matrix( c(NA, NA, NA, NA),
                    nrow = 3,
                    ncol = 4,
                    dimnames = list(NULL) 
                                                                           c("Nome", "Idade",
                                                                           "Cidade", "Telefone")))
cadastro[1,] <- c("Maria das Dores", 56, "São Paulo",3025-111)

cadastro[2,] <- c("José Aníbal", 40, "Santos",3333-012)

cadastro[,2:4]

cadastro[3,] <- c("Pedro Silva", 23, 3091-777, "São Paulo")


cadastro[1:3,2]

x <- as.numeric(cadastro[1:3,2])*4

cadastro[,5] <- "Gastos"


#### Aplicação Prática ####

## Questão 1 ##

# Inicializando Listas
nome <- c("Marcos de Aguiar","Paula Miranda", "Emilio Santos", "Pryscilla de Albuquerque")
salario <- c(4000, 2500, 1200, 3400)
idade <- c(44,56,76,40)

# Crianddo uma Matriz com Column Bind
clientes <- cbind(nome,salario,idade)

#### Questão 2 ####

# Acessando e Modificando um Vetor na MATRIZ
clientes[2,2] <- 5500.33

## Questão 3 ##

# Calculando o Salário Liquido aplicando uma redução de 30%
clientes[,2] <- as.numeric(clientes[,2]) * 0.7 

## Questão 4 ##

# Calculando a Média do Salário de Todos os Clientes
mean(as.numeric(clientes[,2]))

## Questão 5 ##

# Modificando o nome das Colunas
colnames(clientes) <- c("Nome","Salário","Idade")

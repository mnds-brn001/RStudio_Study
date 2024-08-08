#### Aplicação Prática Vetores ###

### Questão 1 ###
# Iniciando Vetor com Nome dos Clientes
clientes <- c("Marcos de Aguiar", "Paula Miranda",
              "Emilio Santos", "Priscila Albuquerque")

### Questão 2 ###
# Acessando e Modificando o 4 vetor
clientes[4] <- c("Pryscilla de Albuquerque")
clientes


### Questão 3 ###

# Iniciando nova Lista
salarios <- c(4000, 2500, 1200, 3400)

# Une as duas Listas
# [ Marcos, Paula, Emilio, Santos ,Pryscilla, 4000, 2500,1200, 3400]
union(clientes, salarios)

# Une Clientes e Salarios como Colunas e seus valores como Linhas
cbind(clientes,salarios)


salarios <- c(salarios * 30 / 100) - salarios
salarios <- abs(salarios)



### Questão 4
#union(clientes, salarios)
#interaction(clientes,salarios)

cbind(clientes,salarios)

### Solução Dada

#### Questão 4

# Removendo 30% do emprestimo dos clientes
salario<- 0.7*salarios







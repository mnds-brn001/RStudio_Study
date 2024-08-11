############ Executar esses códigos antes de começar o Exercício ###############
##### Exercícios Arrays #####

#### Criação de Arrays ####

desempenho <- array(0,dim=c(4,5,3))


#### Nomeando Arrays ####

row.names <- c("Cliente1","Cliente2","Cliente3","Cliente4")
col.names <- c("Nome","Salário","Idade","Motivo","Valor Solicitado")
mtx.name <- c("Funcionário 1 - Melissa M.","Funcionário 2 - Carlos P.",
              "Funcionário 3 - Luciana T.")

desempenho <- array(0, dim=c(4,5,3), dimnames=list(row.names,col.names,mtx.name))


#### Populando Arrays ####

funcionario1<-cbind(Nome=c("Marcos","Paulo","João","Kamila"),
                    Salario=c(7000,3000,4500,2300),
                    Idade=c(45,33,36,45),
                    Motivo=c("Compra de Carro","Reforma da Casa","Viagem","Compra de Casa"),
                    Valor.Pedido=c(450000,34000,20000,120000))

funcionario2<-cbind(Nome=c("Marcela","Fábio","Luana","Romero"),
                    Salario=c(3200,4500,2500,1300),
                    Idade=c(34,30,56,54),
                    Motivo=c("Compra de Carro","Viagem","Viagem","Compra de Carro"),
                    Valor.Pedido=c(75000,55000,19000,90000))

funcionario3<-cbind(Nome=c("Gustavo","Bruno","Joana","Vânia"),
                    Salario=c(11000,5600,1580,6300),
                    Idade=c(56,29,44,57),
                    Motivo=c("Compra de Casa","Compra de Casa","Compra de Apartamento","Reforma da Casa"),
                    Valor.Pedido=c(5500,560000,21000,7000))

desempenho[,,1] <- funcionario1
desempenho[,,2] <- funcionario2
desempenho[,,3] <- funcionario3

##### Cálculo de Comissão #####

# Soma dos valores a serem emprestados - 1º Funcionário
a<- sum(as.numeric(desempenho[,5,1]))

# Soma dos valores a serem emprestados - 2º Funcionário
b<- sum(as.numeric(desempenho[,5,2]))

# Soma dos valores a serem emprestados - 3º Funcionário
c<- sum(as.numeric(desempenho[,5,3]))


max(a,b,c)

# Nesse caso temos que o 1º Funcionário terá a maior comissão.

################################################################################

##### Aplicação Prática de Listas #####


# nomes dos clientes
nomes_clientes <- as.vector(desempenho[,1,])

# Salário dos Clientes
salarios_clientes <- as.vector(desempenho[,2,]) 

# Idade dos clientes
idades<- as.vector(desempenho[,3,]) 

# Criando a Lista de cada Cliente
marcos<-
  list(nome=nomes_clientes[1],
       salario=salarios_clientes[1],
       historico_cartao=c(334,356,544),
       idade=idades[1])

paulo<-
  list(nome=nomes_clientes[2],
       salario=salarios_clientes[2],
       historico_cartao=c(230,280,399),
       idade=idades[2])

joao<-
  list(nome=nomes_clientes[3],
       salario=salarios_clientes[3],
       historico_cartao=c(120,255,270),
       idade=idades[3])

# Fácil acesso a Lista
marcos
paulo
joao

# Calculo da Media do Histórico de Cartão de cada Cliente
mean(marcos[[3]])
mean(paulo[[3]])
mean(joao[[3]])











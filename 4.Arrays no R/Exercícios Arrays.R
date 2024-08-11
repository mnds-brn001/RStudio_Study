##### Exercícios Arrays #####

#### Criação de Arrays ####

desempenho <- array(0,dim=c(4,5,3))

### Nomeando o  L | C | M  da Matriz Desempenho

row.names <- c("Cliente1","Cliente2","Cliente3","Cliente4")

col.names <- c("Nome","Salário","Idade","Motivo","Valor Solicitado")

mtx.name <- c("Funcionário 1 - Melissa M.","Funcionário 2 - Carlos P.",
              "Funcionário 3 - Luciana T.")

desempenho <- array(0, dim=c(4,5,3), dimnames=list(row.names,col.names,mtx.name))

#### Populando a Matriz dos Funcionários ####
# Utilizando a função Column Bind ( Ligar em Coluna)

funcionario1<-cbind(Nome=c("Marcos","Paulo","João","Kamila"),
                    Salário=c(7000,3000,4500,2300),
                    Idade=c(45,33,36,45),
                    Motivo=c("Compra de Carro","Reforma da Casa","Viagem","Compra de Casa"),
                    Valor.Pedido=c(450000,34000,20000,120000))

funcionario2<-cbind(Nome=c("Marcela","Fábio","Luana","Romero"),
                    Salário=c(3200,4500,2500,1300),
                    Idade=c(34,30,56,54),
                    Motivo=c("Compra de Carro","Viagem","Viagem","Compra de Carro"),
                    Valor.Pedido=c(75000,55000,19000,90000))

funcionario3<-cbind(Nome=c("Gustavo","Bruno","Joana","Vânia"),
                    Salário=c(11000,5600,1580,6300),
                    Idade=c(56,29,44,57),
                    Motivo=c("Compra de Casa","Compra de Casa","Compra de Apartamento","Reforma da Casa"),
                    Valor.Pedido=c(5500,560000,21000,7000))

# Adicionando os Valores em Funcionario conforme suas Matrizes

# Matriz da Melissa
desempenho[,,1] <- funcionario1

# Matriz do Carlos
desempenho[,,2] <- funcionario2

# Matriz da Luciana
desempenho[,,3] <- funcionario3

##### Cálculo de Comissão #####

# Soma dos valores a serem emprestados - 1º Funcionário
# Da Primeira Matriz, na 5ª Coluna ... Como numérico some:
a<- sum(as.numeric(desempenho[,5,1]))

# Soma dos valores a serem emprestados - 2º Funcionário
b<- sum(as.numeric(desempenho[,5,2]))

# Soma dos valores a serem emprestados - 3º Funcionário
c<- sum(as.numeric(desempenho[,5,3]))


max(a,b,c)

# Nesse caso temos que o 1º Funcionário terá a maior comissão.





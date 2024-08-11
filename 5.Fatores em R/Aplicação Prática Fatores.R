#### Aplicação Prática de Fatores #####

### Questão 1 ####

resultado<- as.factor(c("Aprovado","Reprovado","Reprovado","Reprovado","Reprovado",
                        "Aprovado","Reprovado","Reprovado","Aprovado","Reprovado","Aprovado","Aprovado"))
                      
# Também #
# Inicializando a Lista conforme aprovação dos empréstimos
emprest_funcionario1<- c("Aprovado","Reprovado" ,"Reprovado", "Reprovado")
emprest_funcionario2<- c("Reprovado", "Aprovado", "Reprovado","Reprovado" )
emprest_funcionario3<- c("Aprovado", "Reprovado","Aprovado" ,"Aprovado" )
str(emprest_funcionario1) # as.character()

# Transformando-os em fatores
as.factor(emprest_funcionario1)
as.factor(emprest_funcionario2)
as.factor(emprest_funcionario3)
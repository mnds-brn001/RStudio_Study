########## ATIVIDADE PRÁTICA ###########

exemplo<- function(z)
{
#### Definindo & Tratando variáveis ######
  
  Nomes<- as.character()
  
  Prova1<- as.numeric()
  Prova2<- as.numeric()
  Prova3<- as.numeric()
  MediaEscolar<- as.numeric()
  
  Situação<- as.character()
  
  alunos<-data.frame(Nomes,Prova1,Prova2,Prova3,MediaEscolar,Situação)
    
  alunos$Situação<- as.character(alunos$Situação)
  alunos$Nomes<- as.character(alunos$Nomes)
    
    
    ##### IMPRIME O PAINEL DO PROGRAMA ######
    print("Esta função Realiza as seguintes Atividades:")
    print("1 - Cadastra Alunos")
    print("2 - Recebe suas notas")
    print("3 - Mostra sua média e diz se foi aprovado")
    
    print("Cadastro de Alunos --> Digite 1")
    x<-scan(n=1)
    i<-1
    
    
    while (x==1){
      
      #### CADASTRAR ALUNOS #####
      
      #### Nome ####
      print("Nome:")
      nome<- scan(what=character(),nmax=1)
      
      #### INCLUIR NOTAS #####
      print("1ª Nota :")
      Prova1<-scan(n=1)
      
      print("2ª Nota :")
      Prova2<-scan(n=1)
      
      print("3ª Nota :")
      Prova3<-scan(n=1)
      
      
      ###### CALCULA A MÉDIA #######
      notas<- c(Prova1,Prova2,Prova3)
      
      for(j in 1:length(notas))
      {
        cat("Nota na Prova", j, "-->")
        cat("",notas[j],"\n")
      }
      MediaEscolar<-mean(notas)
      cat("Média do Aluno:",
          MediaEscolar, "\n")
      
      #### MOSTRAR A MÉDIA DOS ALUNO ####
      
      if (MediaEscolar>=7)
      {
        print("Aluno Aprovado!!")
        Situação<-"Aprovado"
      }
      if (MediaEscolar<7)
      {
        print("Aluno Reprovado :<")
        Situação<-"Reprovado "
      } 
    
    alunos[i,]<-c(nome,Prova1,Prova2,Prova3,MediaEscolar,Situação)
    
##### PERGUNTA SE DEVE REPETIR O LOOP #####
  print("Cadastrar outro aluno? Sim-> 1  Não->0")
  x<-scan(n=1)
  
i<-i+1
}

print("Obrigado")
print("Banco de dados:")
#### MOSTRAR A SITUAÇÃO DOS ALUNOS EM UM DATA FRAME ######
return(alunos)

}

# Execute para rodar
exemplo(z)





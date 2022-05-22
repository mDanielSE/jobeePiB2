algoritmo "solicitacaoNotificacao"
// Função : Algoritmo implementa solicitação de notificação
// Autor : Beatriz Ferreira de Alencar
// Data : 06/04/2022
// Seção de Declarações
var
menu, candidato, status : inteiro
nome, nome2, pergunta, pessoa: caractere
resposta, respostaCand : caractere
inicio
enquanto (status<> 3) faca
   escreval ("=================================================================")
   escreval ("                   ESCOLHA SEU STATUS:                           ")
   escreval ("                     [1] CANDIDATO                               ")
   escreval ("                     [2] EMPRESA                                 ")
   escreval ("                     [3] SAIR                                    ")
   escreval ("=================================================================")
   leia (status)
   escolha (status)
   caso 1
      limpatela
      timer(500)
      escreval ("QUAL SEU NOME?")
      leia (nome)
      escreva (" BEM-VINDO(A) À JOBEE ", nome, "!!!")
      timer(500)
      escreva(".")
      escreva(".")
      escreva(".")
      timer (0)
      limpatela
      escreval ("==================================================================")
      escreval ( nome, " A EMPRESA AMAZON DESEJA")
      escreval ("CONTATAR VOCÊ PARA PROCESSO SELETIVO. GOSTARIA DE PARTICIPAR? S/N")
      escreval ("===================================================================")
      leia (resposta)
      se (resposta = "s") ou (resposta = "S") entao
         escreval (" AS PRÓXIMAS ETAPAS SERÃO ENVIADAS POR EMAIL EM ATÉ 48 HORAS. BOA SORTE!! :)")
      senao
         status <- 3
      fimse
      timer(500)
      escreva(".")
      escreva(".")
      escreva(".")
      timer (0)
      limpatela
      status <- 3
   caso 2
      limpatela
      timer(300)
      escreval ("QUAL SEU NOME?")
      leia (nome2)
      escreval (" BEM-VINDO(A) À JOBEE ", nome2, "!!!")
      escreval("=======================================================================")
      escreval ("        ESCOLHA O CANDIDATO PARA ENVIAR A SOLICITAÇÃO DE CONTATO:")
      escreval ("                   [1] JANAINA BEZERRA                           ")
      escreval ("                   [2] ROBERTO DA SILVA                          ")
      escreval ("                   [3] LUCAS COSTA                               ")
      escreval ("======================================================================")
      leia (pessoa)
      limpatela
      se (pessoa = "1") entao
         pessoa <- "JANAINA BEZERRA"
      senao
         se (pessoa = "2") entao
            pessoa<- "ROBERTO DA SILVA"
         senao
            se ( pessoa = "3") entao
               pessoa <- "LUCAS COSTA"
            fimse
         fimse
      fimse


      escreval ("===================================")
      escreval ("         MENU    ")

      escreval ("[1] ENVIAR SOLICITAÇÃO DE CONTATO ",pessoa, "?")
      escreval ("[2] BLOQUEAR CANDIDATO ", pessoa, "?")
      escreval ("[3] SAIR.")
      escreval ("===================================")
      leia (menu)
      escolha (menu)
      caso 1
         limpatela
         timer(500)
         escreva ("SOLICITAÇÃO DE CONTATO ENVIADA COM SUCESSO!!")
         timer(1000)
         escreva(".")
         escreva(".")
         escreva(".")
         timer (0)
         limpatela

      caso 2
         escreval ("USUÁRIO BLOQUEADO COM SUCESSO!!")
         timer(1000)
         escreva(".")
         escreva(".")
         escreva(".")
         timer (0)
         limpatela
      caso 3
         escreval ("ATIVIDADE ENCERRADA.")
         timer(1000)
         escreva(".")
         escreva(".")
         escreva(".")
         timer (0)
         limpatela
      fimescolha
   fimescolha
fimenquanto
fimalgoritmo

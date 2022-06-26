Algoritmo "Funcao2_Jobee"
//
//
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Carlos Alberto Costa
//               Beatriz Alencar Kuriki
//               Daniel Marques
//               Jordan Bitencourt
// Data atual  : 19/06/2022
tipo
   vaga = registro
      id_vaga: inteiro
      cargo_vaga : caractere
      detalhes_vaga : caractere
      salario_vaga : real
   fimregistro

Var
   // Seção de Declarações das variáveis
   vetVagas : vetor[0..4] de vaga
   id_vaga, indice, opcao, porcentagem : inteiro
   cargo_vaga, detalhes_vaga : caractere
   salario, salario_vaga, resultado : real

procedimento p_incluiVaga(pr_idVaga : inteiro; pr_cargoVaga : caractere; pr_detalhesVaga : caractere; pr_salarioVaga : real)
var

inicio
   vetVagas.id_vaga[indice] <- pr_idVaga
   vetVagas.cargo_vaga[indice] <- pr_cargoVaga
   vetVagas.detalhes_vaga[indice] <- pr_detalhesVaga
   vetVagas.salario_vaga[indice] <- pr_salarioVaga
   indice <- indice + 1
fimprocedimento

procedimento p_mostraVaga
var
   ind : inteiro
inicio
   escreval ("Vagas cadastradas:")
   escreval ("------------------")
   para ind <- 0 ate 4 passo 1 faca
      escreval ("ID VAGA: ", vetVagas.id_vaga[ind])
      escreval ("CARGO: ", vetVagas.cargo_vaga[ind])
      escreval ("DETALHES: ", vetVagas.detalhes_vaga[ind])
      escreval ("SALÁRIO: R$", vetVagas.salario_vaga[ind])
      escreval ("------------------")
   fimpara
fimprocedimento

funcao f_insalubridade (salario : real; porcentagem : inteiro) : real
var
inicio
   resultado <- salario + (salario * (porcentagem / 100))
   retorne resultado
fimfuncao

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   indice <- 0
   enquanto (opcao <> 9) faca
      escreval ("BEM VINDO A JOBEE!")
      escreval ("Digite a opção desejada:")
      escreval ("1 - Incluir vaga (limite de 5 vagas simultâneas)")
      escreval ("2 - Mostra vagas")
      escreval ("3 - Calcular salário com insalubridade")
      escreval ("9 - SAIR")
      leia (opcao)
      escolha (opcao)
      caso 1
         limpatela
         escreval ("Crie o ID numérico da vaga:")
         escreva ("ID: ")
         leia (id_vaga)
         limpatela
         escreval ("Digite o cargo da vaga:")
         escreval ("(ex. EMPACOTADOR, ASSISTENTE ADM, FAXINEIRA)")
         escreva ("CARGO: ")
         leia (cargo_vaga)
         limpatela
         escreval ("Digite detalhes e funções da vaga:")
         leia (detalhes_vaga)
         limpatela
         escreval ("Informe o valor proposto para a vaga:")
         escreva ("R$")
         leia (salario_vaga)
         limpatela
         p_incluiVaga(id_vaga, cargo_vaga, detalhes_vaga, salario_vaga)
         escreval ("Vaga incluída com sucesso!")
         escreval ("--------------------------")
      caso 2
         limpatela
         p_mostraVaga
      caso 3
         limpatela
         escreval ("Digite o salário base:")
         escreva ("R$")
         leia (salario)
         escreval ("Digite o valor da porcentagem(%) de insalubridade:")
         escreval ("(ex. 10, 20, 40)")
         leia (porcentagem)
         escreval ("O salário total incluindo a porcentagem de insalubridade será:")
         escreval ("R$", f_insalubridade(salario, porcentagem))
         escreval ("------------------")
      caso 9
      fimescolha
   fimenquanto
Fimalgoritmo
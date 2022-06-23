algoritmo "funcionalidadeCadastroJobee"
// Função : Faz o cadastro de uma pessoa física e/ou empresa
// Autor : Daniel M.
// Data : 01/04/2022
// Seção de Declarações
var
nome,area,cpf,cnpj,email,senha : caractere
idade,opcao,opcao2, senhaCripto, i : inteiro
inicio
opcao <- 0
opcao2 <- 0

enquanto (opcao <> 3 ) faca
   limpatela
   escreval("----ÁREA DE CADASTRO-----")
   escreval("Selecione a opção de cadastro desejada:")
   escreval("[1] Pessoa")
   escreval("[2] Empresa")
   escreval("[3] Cancelar")
   leia(opcao)
   limpatela

   escolha opcao
   caso 1
      escreval("Insira seus dados abaixo: ")
      escreva("Nome: ")
      leia(nome)
      escreva("Idade: ")
      leia(idade)
      repita
          se (idade < 18) entao
             escreval("Idade inválida! Você deve ter 18 anos ou mais")
             leia(idade)
          fimSe
          se  (idade >= 75) entao
              escreval("Idade inválida! Você deve ter menos de 75 anos")
              leia(idade)
          fimSe
      ate (idade >= 18) e (idade < 75)
      
      escreva("CPF: ")
      leia(cpf)
      repita
         se (compr(cpf)<>11) entao
            escreval("Valor Inválido! CPF deve conter 11 dígitos")
            escreva("CPF: ")
            leia(cpf)
         fimSe
      ate (compr(cpf) = 11)
      escreva("E-mail: ")
      leia(email)
      escreva("Área de atuação: ")
      leia(area)
      escreva("Senha: ")
      leia(senha)

      escreval("-----MENU-----")
      escreval("[1] - Confirmar")
      escreval("[2] - Voltar")
      escreval("[3] - Cancelar e sair")
      leia(opcao2)

      enquanto (opcao2 <> 4) faca
         escolha opcao2
         caso 1
            limpatela
            escreval("Obrigado! Seu cadastro foi realizado com sucesso!")
            escreval("")
            escreval("-----DADOS CADASTRADOS-----")
            escreval("NOME: ",nome)
            escreval("IDADE: ",idade)
            escreval("CPF: ",cpf)
            escreval("E-MAIL: ",email)
            escreval("ATUAÇÃO: ",area)
            senhaCripto <- compr(senha)
            senha <- ""
            para i <- 1 ate (senhaCripto) passo 1 faca
               senha <- senha + "*"
            fimPara

            escreval("SENHA: ",senha)
            escreval("----------------------------")
            escreva("(: JOBEE :)")
            opcao2 <- 4
         caso 2
            limpatela
            opcao2 <- opcao2+2
            opcao <- -1
         caso 3
            limpatela
            escreva("O cadastro foi cancelado com sucesso!")
            opcao2 <- opcao2 + 1

         fimEscolha
      fimEnquanto
      opcao <- opcao + 2

   caso 2
      escreval("Insira os dados da empresa abaixo: ")
      escreva("Nome da empresa: ")
      leia(nome)
      escreva("CNPJ da empresa: ")
      leia(cnpj)
      repita
         se (compr(cnpj)<>14) entao
            escreval("Valor Inválido! CNPJ deve conter 14 dígitos")
            escreva("CNPJ: ")
            leia(cnpj)
         fimSe
      ate (compr(cnpj)=14)
      escreva("E-mail: ")
      leia(email)
      escreva("Área de atuação da empresa: ")
      leia(area)
      escreva("Senha: ")
      leia(senha)

      escreval("[1] - Confirmar e Sair")
      escreval("[2] - Voltar")
      escreval("[3] - Cancelar e sair")
      leia(opcao2)
      enquanto (opcao2 <> 4) faca
         escolha opcao2
         caso 1
            limpatela
            escreval("Obrigado! O cadastro da empresa foi realizado com sucesso!")
            escreval("")
            escreval("-----DADOS CADASTRADOS-----")
            escreval("NOME DA EMPRESA: ",nome)
            escreval("CNPJ: ",cnpj)
            escreval("E-MAIL: ",email)
            escreval("ATUAÇÃO: ",area)
            senhaCripto <- compr(senha)
            senha <- ""
            para i <- 1 ate (senhaCripto) passo 1 faca
               senha <- senha + "*"
            fimPara
            escreval("SENHA: ",senha)
            escreval("----------------------------")
            escreva("(: JOBEE :)")
            opcao2 <- 4
         caso 2
            limpatela
            opcao2 <- opcao2+2
            opcao <- -1
         caso 3
            limpatela
            escreva("O cadastro foi cancelado com sucesso!")
            opcao2 <- opcao2 + 1
         fimEscolha
      fimEnquanto
      opcao <- opcao + 1
   caso 3
      escreva("Finalizado com sucesso!")
      interrompa
   fimEscolha
fimEnquanto


fimalgoritmo

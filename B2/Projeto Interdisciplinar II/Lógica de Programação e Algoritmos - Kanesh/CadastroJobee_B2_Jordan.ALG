Algoritmo "JOBEE - CADASTRO"
// Autor(a)    : Jordan Fernandes Bitencourt
tipo

   p_fisica = registro
      nome : caractere
      idade : inteiro
      cpf : real
      area : caractere
   fimregistro

   p_juridica = registro
      nome : caractere
      cpf : real
      area : caractere
   fimregistro


Var
   VetFisica : vetor [0..10] de p_fisica
   VetJuridica : vetor [0..10] de p_juridica
   indice, indice2, opcao, opcao2, opcao3, opcao4, idade, modif, i, x, l, y, z, contador: inteiro
   nome, area: caractere
   cpf: real

procedimento p_entrada_fisica (p_nome : caractere;  p_idade : inteiro; p_cpf : real;p_area : caractere)
var

inicio
   vetFisica.nome[indice] <- p_nome
   vetFisica.idade[indice] <- p_idade
   vetFisica.cpf [indice] <- p_cpf
   vetFisica.area [indice] <- p_area
   indice <- indice + 1
fimprocedimento

procedimento p_entrada_juridica (p_nome : caractere; p_cpf : real;p_area : caractere)
var

inicio
   vetJuridica.nome[indice2] <- p_nome
   vetJuridica.cpf [indice2] <- p_cpf
   vetJuridica.area [indice2] <- p_area
   indice2 <- indice2 + 1
fimprocedimento

procedimento p_mostraTodos_Fisica
var
   cont, indi : inteiro
inicio
   indi <- indice - 1
   se (indice = 0) entao
      escreval ("Não existe nenhum cadastro de pessoa física")
      escreval (" ")
   fimse
   para cont de 0 ate indi faca
      escreval (vetFisica.nome[cont], " - ", vetFisica.area[cont], " -", vetFisica.cpf[cont])
      escreval (" ")
   fimpara
fimprocedimento

procedimento p_mostraTodos_Juridica
var
   ind , indi2: inteiro
inicio
   indi2 <- indice2 - 1
   se (indice2 = 0) entao
      escreval ("Não existe nenhum cadastro de pessoa jurídica")
      escreval (" ")
   fimse
   para ind de 0 ate indi2 faca
      escreval (vetJuridica.nome[ind], " - ", vetJuridica.area[ind], " -", vetJuridica.cpf[ind])
      escreval (" ")
   fimpara
fimprocedimento


procedimento p_excluir (p_ncadastro: inteiro) : inteiro
var

Inicio

   vetFisica[p_ncadastro].nome <- (" ")
   vetFisica[p_ncadastro].idade <- 0
   vetFisica[p_ncadastro].cpf <- 0
   vetFisica[p_ncadastro].area <- (" ")
   contador <- p_ncadastro
   escreval ("O cadastro ",p_ncadastro," foi excluido!")
   escreval (p_ncadastro, " - Nome: ",vetFisica.nome[p_ncadastro], " - Idade:",vetFisica.idade[p_ncadastro], " - Area de Atuação: ", vetFisica.area[p_ncadastro], " - CPF: ", vetFisica.cpf[p_ncadastro])
fimprocedimento

procedimento p_excluir_juridica (p_ncadastro: inteiro) : inteiro
var

Inicio

   vetJuridica[p_ncadastro].nome <- (" ")
   vetJuridica[p_ncadastro].cpf <- 0
   vetJuridica[p_ncadastro].area <- (" ")
   contador <- p_ncadastro
   escreval ("O cadastro ",p_ncadastro," foi excluido!")
   escreval (p_ncadastro, " - Nome: ",vetJuridica.nome[p_ncadastro]," - Area de Atuação: ", vetJuridica.area[p_ncadastro]," - CNPJ: ",vetJuridica.cpf[p_ncadastro])
fimprocedimento

funcao f_validacaocpf (p_cpf: real) : logico
var

Inicio
   se (p_cpf <> 0) entao
      se (p_cpf < 10000000000) ou (p_cpf >= 100000000000) entao
         retorne falso
      senao
         retorne verdadeiro
      fimse
   fimse
fimfuncao

funcao f_validacaocnpj (p_cnpj: real) : logico
var

Inicio
   se (p_cnpj <> 0) entao
      se (p_cnpj < 10000000000000) ou (p_cnpj >= 100000000000000) entao
         retorne falso
      senao
         retorne verdadeiro
      fimse
   fimse
fimfuncao

Inicio
   indice <- 0
   indice2 <- 0
   enquanto (opcao <> 9 ) faca
      escreval ("-------- CADASTRO - JOBEE --------")
      escreval (" 1 - Cadastro Pessoa Física")
      escreval (" 2 - Cadastro Pessoa Jurídica")
      escreval (" 3 - Mostrar Cadastros")
      escreval (" 4 - Excluir Cadastro")
      escreval (" 9 - FIM")
      escreval ("----------------------------------")
      leia (opcao)
      escolha (opcao)
      caso 1
         limpatela
         escreval ("Qual o Nome do Usuário?")
         leia (nome)
         escreval ("Qual a Idade do ",nome,"?")
         leia (idade)
         escreval ("Qual o Cpf do ",nome,"?")
         leia (cpf)
         enquanto f_validacaocpf(cpf) = falso faca
            escreval ("- O CPF informado está incorreto")
            escreval ("- O CPF deve conter 11 digitos")
            escreval ("- Exemplo: 12456713536")
            escreval (" ")
            escreval ("Qual o Cpf do ",nome,"?")
            leia (cpf)
         fimenquanto
         escreval ("Qual a Área de Atuação do ",nome,"?")
         leia (area)
         p_entrada_fisica(nome, idade, cpf, area)
         limpatela
         cpf <- 0
      caso 2
         limpatela
         escreval ("Qual o Nome da Empresa?")
         leia (nome)
         escreval ("Qual o CNPJ do ",nome,"?")
         leia (cpf)
         enquanto f_validacaocnpj(cpf) = falso faca
            escreval ("- O CNPJ informado está incorreto")
            escreval ("- O CNPJ deve conter 14 digitos")
            escreval ("- Exemplo: 12456713536236")
            escreval (" ")
            escreval ("Qual o CNPJ do ",nome,"?")
            leia (cpf)
         fimenquanto
         escreval ("Qual a Área de Atuação da ",nome,"?")
         leia (area)
         p_entrada_juridica(nome, cpf, area)
         limpatela
         cpf <- 0
      caso 3
         limpatela
         enquanto (z <> 3) faca
            escreval ("Qual tipo de cadastro você deseja mostrar?")
            escreval (" 1 - Pessoa(s) Física")
            escreval (" 2 - Pessoa(s) Jurídica")
            escreval (" 3 - Voltar ao Menu")
            leia (z)
            escolha (z)
            caso 1
               limpatela
               escreval ("TODOS OS CADASTROS DE PESSOA FÍSICA:")
               p_mostraTodos_Fisica
            caso 2
               limpatela
               escreval ("TODOS OS CADASTROS DE PESSOA JURÍDICA:")
               p_mostraTodos_Juridica
            caso 3
               limpatela
            fimescolha
         fimenquanto
      caso 4
         limpatela
         escreval ("Qual tipo de cadastro você deseja excluir?")
         escreval (" 1 - Pessoa Física ")
         escreval (" 2 - Pessoa Jurídica ")
         leia (modif)
         escolha (modif)
         caso 1
         l <- indice - 1
            para i de 0 ate l faca
                  escreval (i," - ",vetFisica.nome[i])
                  escreval (" ")
               fimpara
               escreval ("Qual cadastro deseja excluir?")
               leia (opcao3)
               p_excluir(opcao3)
            caso 2
               para i de 0 ate indice faca
                  escreval (i," - ",vetJuridica.nome[i])
                  escreval (" ")
               fimpara
               escreval ("Qual cadastro deseja alterar?")
               leia (opcao4)
               p_excluir_juridica(opcao4)
            fimescolha
         caso 9
            limpatela
            escreval ("Algoritmo Finalizado!!")
         fimescolha
      fimenquanto
Fimalgoritmo
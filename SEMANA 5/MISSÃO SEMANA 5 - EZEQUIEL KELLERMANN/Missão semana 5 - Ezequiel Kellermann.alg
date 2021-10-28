algoritmo "Missão da semana 5 - algoritmo de conversão de temperaturas"
// Autor : Ezequiel Kellermann

var    // Bloco var - Inicializa variaveis globais
opcaomenu: literal
tempentrada: vetor [1..4] de real
tempsaida: vetor [1..4] de real
hora: vetor [1..4] de literal
i, j: inteiro

Procedimento lermenu ()  //Procedimento apresenta opções do menu e realiza coleta da opção escolhida pelo usuario armazenando na variavel opcaomenu
   inicio
      Escreval ("Digite o numero da opção que deseja selecionar")
      Escreval ("Digite 1: Para converter temperatura de Celsius para Fahrenheit")
      Escreval ("Digite 2: Para converter a temperatura de Fahrenheit para Celsius")
      Escreval ("Digite 3: Para finalizar a aplicação")
      leia (opcaomenu) //Variavel armazena a opcao do menu escolhida
      limpatela  //limpa a tela
fimprocedimento


procedimento calculo (): real //Procedimento realiza coleta dos dados inseridos pelo usuario, aplica a conversão escolhida e realiza o metodo bolha colocando em ordem crescente

   var  //Inicializa variaveis locais utilizadas somente no procedimento "calculo ()"
   aux, aux2: real
   aux3: literal
   
   inicio
         se opcaomenu = "1" entao  //se a escolha do usuario for a opção 1 do menu
            para i de 1 ate 4 faca  //Realiza o looping para i 4 vezes
            Escreval ("Escreva a temperatura em Celsius: ") //solicita ao usuario que insira a temperatura em celsius
            leia (tempentrada[i]) //Armazena o valor inserido no vetor tempentrada[i]
            tempsaida[i] <- (tempentrada[i] * 1.8) + 32 //Realiza o calculo de conversão e armazena o resultado no vetor tempsaida[i]
            Escreval ("Informe horario do registro, Favor utilizar o formato hh:mm (horas:minuitos):") //Solicita a hora da coleta da temperatura
            leia (hora[i]) //Armazena a informação inserida no vetor hora[i]
            limpatela //limpa a tela
            fimpara  //Finaliza o looping
   
        senao
           se opcaomenu = "2" entao  //se a escolha do usuario for a opção 2 do menu
             para i de 1 ate 4 faca  //Realiza o looping para i 4 vezes
             Escreval ("Escreva a temperatura em Fahrenheit: ") //solicita ao usuario que insira a temperatura em Fahrenheit
             leia (tempentrada[i]) //Armazena o valor inserido no vetor tempentrada[i]
             tempsaida[i] <- (tempentrada[i] - 32) / 1.8 //Realiza o calculo de conversão e armazena o resultado no vetor tempsaida[i]
             Escreval ("Informe horario do registro, Favor utilizar o formato hh:mm (horas:minuitos):") //Solicita a hora da coleta da temperatura
             leia (hora[i]) //Armazena a informação inserida no vetor hora[i]
             limpatela //limpa a tela
             fimpara //Finaliza o looping
        fimse //Finaliza condiçao "se"
     fimse  //Finaliza condição "se"
   
     para i de 1 ate 4 faca  //Realiza o looping para i 4 vezes
      para j de 1 ate 4 faca //Realiza o looping para j 4 vezes
        se tempentrada[j] > tempentrada[i] entao  //Realiza a comparação se a valor no vetor [j] é maior que o valor no vetor [i]
         aux <- tempentrada[i] //Se a condição acima for verdade então atibui o valor do vetor na posição [i] a variavel aux de modo temporario
         tempentrada[i] <- tempentrada[j] //Atribui o valor do vetor na posição [j] ao vetor na posição [i]
         tempentrada[j] <- aux //Atribui o valor que havia sido alocado temporariamente na variavel aux ao vetor na posição [i]

         aux2 <- tempsaida[i] //Atibui o valor do vetor na posição [i] a variavel aux2 de modo temporario
         tempsaida[i] <- tempsaida[j] //Atribui o valor do vetor na posição [j] ao vetor na posição [i]
         tempsaida[j] <- aux2 //Atribui o valor que havia sido alocado temporariamente na variavel aux2 ao vetor na posição [i]

         aux3 <- hora[i] //Atibui o valor do vetor na posição [i] a variavel aux3 de modo temporario
         hora[i] <- hora[j] //Atribui o valor do vetor na posição [j] ao vetor na posição [i]
         hora[j] <- aux3 //Atribui o valor que havia sido alocado temporariamente na variavel aux3 ao vetor na posição [i]
        fimse //Finaliza a condição "se"
      fimpara //Finaliza o looping para o j
     fimpara //Finaliza o looping para o i
 fimprocedimento
   
   

inicio
 repita  //Repete looping até a flag de saida for acionada
   lermenu ()  //Aplica o procedimento apresentando no lermenu ()
     se opcaomenu = "1" entao  //Se a opção escolhida no menu for a opção 1
       calculo() //Aplica o procedimento calculo ()
       para i de 1 ate 4 faca  //Realiza o looping para i 4 vezes
             Escreval ("Temperatura ", tempentrada[i], " Celsius, registrada as ", hora[i], " horas corresponde a", tempsaida[i], " Graus Fahrenheit") //Imprime na tela as temperaturas inseridas (em ordem crescente) o horario e a temperatura convertida
             fimpara  //Finaliza o looping para o i
             Escreval () //Deixa uma linha em branco
             Escreval ("Digite F9 para voltar ao menu e cadastrar novamente") //Instrui o usuario a utilizar o comando (F9) caso queira retornar ao menu e fazer outras conversões
             Escreval ("Digite Ctrl+F2 para finalizar a aplicação") //Instrui o usuario a utilizar o comando(Ctrl+F2) caso o usuario queira finalizar a aplicação
             pausa //Mantém a aplicação pausada até o usuario definir o que deseja realizar
             limpatela //limpa a tela
             
 senao
     se opcaomenu = "2" entao   //Se a opção escolhida no menu for a opção 2
       calculo () //Aplica o procedimento calculo ()
        para i de 1 ate 4 faca   //Realiza o looping para i 4 vezes
             Escreval ("Temperatura ", tempentrada[i], " Fahrenheit, registrada as ", hora[i], " horas corresponde a", tempsaida[i], " Graus Celsius") //Imprime na tela as temperaturas inseridas (em ordem crescente) o horario e a temperatura convertida
             fimpara  //Finaliza o looping para o i
             Escreval () //Deixa uma linha em branco
             Escreval ("Digite F9 para voltar ao menu e cadastrar novamente") //Instrui o usuario a utilizar o comando (F9) caso queira retornar ao menu e fazer outras conversões
             Escreval ("Digite Ctrl+F2 para finalizar a aplicação") //Instrui o usuario a utilizar o comando(Ctrl+F2) caso o usuario queira finalizar a aplicação
             pausa //Mantém a aplicação pausada até o usuario definir o que deseja realizar
             limpatela //limpa a tela
       
       senao
        se (opcaomenu <> "1") E (opcaomenu <> "2") E (opcaomenu <> "3") entao  //Se a opção escolhida for diferente de 1, 2 e 3
        Escreval ("Opção não disponivel, por favor escolha uma das opções do menu") //Se a condição acima for verdadeira informa que a opção inserida não é valida e solicita uma escolha valida do menu ao usuario
        
        fimse  //Finaliza condição "se"
       fimse  //Finaliza condição "se"
     fimse //Finaliza condição "se"
     
 ate opcaomenu = "3"    //Se a opção escolhida for a 3 a aplicação é encerrada



fimalgoritmo


algoritmo "Miss�o da semana 5 - algoritmo de convers�o de temperaturas"
// Autor : Ezequiel Kellermann

var    // Bloco var - Inicializa variaveis globais
opcaomenu: literal
tempentrada: vetor [1..4] de real
tempsaida: vetor [1..4] de real
hora: vetor [1..4] de literal
i, j: inteiro

Procedimento lermenu ()  //Procedimento apresenta op��es do menu e realiza coleta da op��o escolhida pelo usuario armazenando na variavel opcaomenu
   inicio
      Escreval ("Digite o numero da op��o que deseja selecionar")
      Escreval ("Digite 1: Para converter temperatura de Celsius para Fahrenheit")
      Escreval ("Digite 2: Para converter a temperatura de Fahrenheit para Celsius")
      Escreval ("Digite 3: Para finalizar a aplica��o")
      leia (opcaomenu) //Variavel armazena a opcao do menu escolhida
      limpatela  //limpa a tela
fimprocedimento


procedimento calculo (): real //Procedimento realiza coleta dos dados inseridos pelo usuario, aplica a convers�o escolhida e realiza o metodo bolha colocando em ordem crescente

   var  //Inicializa variaveis locais utilizadas somente no procedimento "calculo ()"
   aux, aux2: real
   aux3: literal
   
   inicio
         se opcaomenu = "1" entao  //se a escolha do usuario for a op��o 1 do menu
            para i de 1 ate 4 faca  //Realiza o looping para i 4 vezes
            Escreval ("Escreva a temperatura em Celsius: ") //solicita ao usuario que insira a temperatura em celsius
            leia (tempentrada[i]) //Armazena o valor inserido no vetor tempentrada[i]
            tempsaida[i] <- (tempentrada[i] * 1.8) + 32 //Realiza o calculo de convers�o e armazena o resultado no vetor tempsaida[i]
            Escreval ("Informe horario do registro, Favor utilizar o formato hh:mm (horas:minuitos):") //Solicita a hora da coleta da temperatura
            leia (hora[i]) //Armazena a informa��o inserida no vetor hora[i]
            limpatela //limpa a tela
            fimpara  //Finaliza o looping
   
        senao
           se opcaomenu = "2" entao  //se a escolha do usuario for a op��o 2 do menu
             para i de 1 ate 4 faca  //Realiza o looping para i 4 vezes
             Escreval ("Escreva a temperatura em Fahrenheit: ") //solicita ao usuario que insira a temperatura em Fahrenheit
             leia (tempentrada[i]) //Armazena o valor inserido no vetor tempentrada[i]
             tempsaida[i] <- (tempentrada[i] - 32) / 1.8 //Realiza o calculo de convers�o e armazena o resultado no vetor tempsaida[i]
             Escreval ("Informe horario do registro, Favor utilizar o formato hh:mm (horas:minuitos):") //Solicita a hora da coleta da temperatura
             leia (hora[i]) //Armazena a informa��o inserida no vetor hora[i]
             limpatela //limpa a tela
             fimpara //Finaliza o looping
        fimse //Finaliza condi�ao "se"
     fimse  //Finaliza condi��o "se"
   
     para i de 1 ate 4 faca  //Realiza o looping para i 4 vezes
      para j de 1 ate 4 faca //Realiza o looping para j 4 vezes
        se tempentrada[j] > tempentrada[i] entao  //Realiza a compara��o se a valor no vetor [j] � maior que o valor no vetor [i]
         aux <- tempentrada[i] //Se a condi��o acima for verdade ent�o atibui o valor do vetor na posi��o [i] a variavel aux de modo temporario
         tempentrada[i] <- tempentrada[j] //Atribui o valor do vetor na posi��o [j] ao vetor na posi��o [i]
         tempentrada[j] <- aux //Atribui o valor que havia sido alocado temporariamente na variavel aux ao vetor na posi��o [i]

         aux2 <- tempsaida[i] //Atibui o valor do vetor na posi��o [i] a variavel aux2 de modo temporario
         tempsaida[i] <- tempsaida[j] //Atribui o valor do vetor na posi��o [j] ao vetor na posi��o [i]
         tempsaida[j] <- aux2 //Atribui o valor que havia sido alocado temporariamente na variavel aux2 ao vetor na posi��o [i]

         aux3 <- hora[i] //Atibui o valor do vetor na posi��o [i] a variavel aux3 de modo temporario
         hora[i] <- hora[j] //Atribui o valor do vetor na posi��o [j] ao vetor na posi��o [i]
         hora[j] <- aux3 //Atribui o valor que havia sido alocado temporariamente na variavel aux3 ao vetor na posi��o [i]
        fimse //Finaliza a condi��o "se"
      fimpara //Finaliza o looping para o j
     fimpara //Finaliza o looping para o i
 fimprocedimento
   
   

inicio
 repita  //Repete looping at� a flag de saida for acionada
   lermenu ()  //Aplica o procedimento apresentando no lermenu ()
     se opcaomenu = "1" entao  //Se a op��o escolhida no menu for a op��o 1
       calculo() //Aplica o procedimento calculo ()
       para i de 1 ate 4 faca  //Realiza o looping para i 4 vezes
             Escreval ("Temperatura ", tempentrada[i], " Celsius, registrada as ", hora[i], " horas corresponde a", tempsaida[i], " Graus Fahrenheit") //Imprime na tela as temperaturas inseridas (em ordem crescente) o horario e a temperatura convertida
             fimpara  //Finaliza o looping para o i
             Escreval () //Deixa uma linha em branco
             Escreval ("Digite F9 para voltar ao menu e cadastrar novamente") //Instrui o usuario a utilizar o comando (F9) caso queira retornar ao menu e fazer outras convers�es
             Escreval ("Digite Ctrl+F2 para finalizar a aplica��o") //Instrui o usuario a utilizar o comando(Ctrl+F2) caso o usuario queira finalizar a aplica��o
             pausa //Mant�m a aplica��o pausada at� o usuario definir o que deseja realizar
             limpatela //limpa a tela
             
 senao
     se opcaomenu = "2" entao   //Se a op��o escolhida no menu for a op��o 2
       calculo () //Aplica o procedimento calculo ()
        para i de 1 ate 4 faca   //Realiza o looping para i 4 vezes
             Escreval ("Temperatura ", tempentrada[i], " Fahrenheit, registrada as ", hora[i], " horas corresponde a", tempsaida[i], " Graus Celsius") //Imprime na tela as temperaturas inseridas (em ordem crescente) o horario e a temperatura convertida
             fimpara  //Finaliza o looping para o i
             Escreval () //Deixa uma linha em branco
             Escreval ("Digite F9 para voltar ao menu e cadastrar novamente") //Instrui o usuario a utilizar o comando (F9) caso queira retornar ao menu e fazer outras convers�es
             Escreval ("Digite Ctrl+F2 para finalizar a aplica��o") //Instrui o usuario a utilizar o comando(Ctrl+F2) caso o usuario queira finalizar a aplica��o
             pausa //Mant�m a aplica��o pausada at� o usuario definir o que deseja realizar
             limpatela //limpa a tela
       
       senao
        se (opcaomenu <> "1") E (opcaomenu <> "2") E (opcaomenu <> "3") entao  //Se a op��o escolhida for diferente de 1, 2 e 3
        Escreval ("Op��o n�o disponivel, por favor escolha uma das op��es do menu") //Se a condi��o acima for verdadeira informa que a op��o inserida n�o � valida e solicita uma escolha valida do menu ao usuario
        
        fimse  //Finaliza condi��o "se"
       fimse  //Finaliza condi��o "se"
     fimse //Finaliza condi��o "se"
     
 ate opcaomenu = "3"    //Se a op��o escolhida for a 3 a aplica��o � encerrada



fimalgoritmo


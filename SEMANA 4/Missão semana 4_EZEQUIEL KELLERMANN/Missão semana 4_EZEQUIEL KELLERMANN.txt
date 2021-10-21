algoritmo "Missão Semana 4 - Menu de conversões"
// Autor : Ezequiel Kellermann

var
opcaomenu: literal
tempcelsius, convFahrenheit, tempfahrenheit, convcelsius, cotdolar, qntreais, convdolares, qntdolares, convreais : real

inicio

repita

      Escreval ("Digite o numero da opção que deseja selecionar")
      Escreval ("Digite 1: Para converter temperatura de Celsius para Fahrenheit")
      Escreval ("Digite 2: Para converter a temperatura de Fahrenheit para Celsius")
      Escreval ("Digite 3: Para converter moeda de Reais para Dólares")
      Escreval ("Digite 4: Para converter moeda de Dólares para Reais")
      Escreval ("Digite 5: Para finalizar a aplicação")
      leia (opcaomenu)
      limpatela

se opcaomenu = "1" entao
    Escreval ("Escreva a temperatura em Celsius: ")
    leia (tempcelsius)
    convFahrenheit <- (tempcelsius * 1.8) + 32
    Escreval ("A temperatura em Fahrenheit é: ", convFahrenheit, " F")
    Escreval ()
    Escreval ("Digite F9 para voltar ao menu de opções")
    Escreval ("Digite Ctrl+F2 para finalizara aplicação")
    pausa
    limpatela
    
    
 senao
  se opcaomenu = "2" entao
    Escreval ("Escreva a temperatura em Fahrenheit: ")
    leia (tempfahrenheit)
    convcelsius <- (tempfahrenheit - 32) / 1.8
    Escreval ("A temperatura em Celsius é: ", convcelsius, " °C")
    Escreval ()
    Escreval ("Digite F9 para voltar ao menu de opções")
    Escreval ("Digite Ctrl+F2 para finalizara aplicação")
    pausa
    limpatela


    senao
     se opcaomenu = "3" entao
      Escreval ("Escreva a cotação atual do Dólar (1 dólar equivale a quantos Reais): ")
      leia (cotdolar)
      Escreval ("Escreva o valor em reais que deseja converter em Dólares: ")
      leia (qntreais)
      convdolares <- qntreais / cotdolar
      Escreval ("O valor inserido conertido em dólares é: ", convdolares, " US$")
      Escreval ()
      Escreval ("Digite F9 para voltar ao menu de opções")
      Escreval ("Digite Ctrl+F2 para finalizara aplicação")
      pausa
      limpatela
    
    
      senao
       se opcaomenu = "4" entao
       Escreval ("Escreva a cotação atual do Dólar (1 dólar equivale a quantos Reais): ")
       leia (cotdolar)
       Escreval ("Escreva o valor em dólares que deseja converter em Reais: ")
       leia (qntdolares)
       convreais <- qntdolares * cotdolar
       Escreval ("O valor inserido conertido em reais é: ", convreais, " R$")
       Escreval ()
       Escreval ("Digite F9 para voltar ao menu de opções")
       Escreval ("Digite Ctrl+F2 para finalizara aplicação")
       pausa
       limpatela
    
    senao
        se (opcaomenu <> "1") E (opcaomenu <> "2") E (opcaomenu <> "3") E (opcaomenu <> "4") E (opcaomenu <> "5") entao
         Escreval ("********Opção não disponivel, por favor escolha uma das opções do menu********")
         Escreval ()

         fimse
       fimse
    fimse
  fimse
fimse

ate opcaomenu = "5"

fimalgoritmo

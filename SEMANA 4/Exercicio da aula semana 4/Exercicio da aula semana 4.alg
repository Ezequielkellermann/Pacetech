algoritmo "Exercicio Semana 4 - Menu de conversões"
// Autor : Ezequiel Kellermann

var
opcaomenu: literal
tempcelsius, convFahrenheit, tempfahrenheit, convcelsius: real
i, x: inteiro

inicio

repita

      Escreval ("Digite o numero da opção que deseja selecionar")
      Escreval ("Digite 1: Para converter temperatura de Celsius para Fahrenheit")
      Escreval ("Digite 2: Para converter a temperatura de Fahrenheit para Celsius")
      Escreval ("Digite 3: Para finalizar a aplicação")
      leia (opcaomenu)
      limpatela


i <- 1
x <- 1

se opcaomenu = "1" entao
    tempcelsius <- 1
    enquanto i < 101 faca
    convFahrenheit <- (tempcelsius * 1.8) + 32
    Escreval ("A temperatura" , i, " Celsius em Fahrenheit é: ", convFahrenheit, " F")
    i <- i+1
    tempcelsius <- tempcelsius + 1
    Escreval ()

 fimenquanto
    
    
 senao
  se opcaomenu = "2" entao
    tempfahrenheit <- 1
    enquanto x < 101 faca
    convcelsius <- (tempfahrenheit - 32) / 1.8
    Escreval ("A temperatura" , x," Fahrenheit em Celsius é:", convcelsius, " °C")
    x <- x+1
    tempfahrenheit <- tempfahrenheit + 1
    Escreval ()

 fimenquanto


    senao
        se (opcaomenu <> "1") E (opcaomenu <> "2") E (opcaomenu <> "3") entao
         Escreval ("Opção não disponivel, por favor escolha uma das opções do menu")


    fimse
  fimse
fimse

ate opcaomenu = "3"

fimalgoritmo

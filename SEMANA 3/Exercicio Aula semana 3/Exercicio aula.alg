algoritmo "semnome"
// Autor : Ezequiel e Guilherme

var
   Fahrenheit, celsius: real

inicio

escreval ("Escreva a temperatura em Fahrenheit: ")
leia (Fahrenheit)
Celsius <- (Fahrenheit - 32) / 1.8
Escreval ("A temperatura em Fahrenheit �: ", Celsius)

se Celsius <= 15 entao
   escreval ("Est� frio")
senao
     se Celsius > 28 entao
     Escreval ("Est� calor, temperaturra em Fahrenheit: ", Fahrenheit)
     
     senao
     Escreval ("Agradavel, temperatura em Fahrenheit: ", Fahrenheit)


     fimse
fimse
fimalgoritmo

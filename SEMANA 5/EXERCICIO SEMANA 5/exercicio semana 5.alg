algoritmo "Ordenacao"


var
numeros: vetor[1..6] de real
aux: real
i, j: inteiro

//contador: inteiro (iniciava uma variavel não necessária)

procedimento OrdenacaoNumeros (): real //parametro inserido () : real
inicio

para i de 1 ate 6 faca
   para j de 1 ate 6 faca
      se numeros[j] < numeros[i] entao    //alterado <
         aux <- numeros[i]
         numeros[i] <- numeros[j]
         numeros[j] <- aux
      fimse
   fimpara
fimpara
fimprocedimento

inicio

para i de 1 ate 6 faca
     //Escreva("Informe o", contador, " número a ser armazenado: ") (colocava um 0 na frase)
     Escreva("Informe o número a ser armazenado: ")
     leia(numeros[i]) //i
fimpara


//Ordenar o vetor de numeros na ordem ---> DECRESCENTE <---
OrdenacaoNumeros ()

//Imprimir os 6 números digitados na ordem ---> DECRESCENTE <---
Escreval()
Escreval("Números ordenados de forma DECRESCENTE:")
para i de 1 ate 6 faca
     Escreval(numeros[i]) //i
fimpara

fimalgoritmo


algoritmo "Ordenacao"


var
numeros: vetor[1..6] de real
aux: real
i, j: inteiro

//contador: inteiro (iniciava uma variavel n�o necess�ria)

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
     //Escreva("Informe o", contador, " n�mero a ser armazenado: ") (colocava um 0 na frase)
     Escreva("Informe o n�mero a ser armazenado: ")
     leia(numeros[i]) //i
fimpara


//Ordenar o vetor de numeros na ordem ---> DECRESCENTE <---
OrdenacaoNumeros ()

//Imprimir os 6 n�meros digitados na ordem ---> DECRESCENTE <---
Escreval()
Escreval("N�meros ordenados de forma DECRESCENTE:")
para i de 1 ate 6 faca
     Escreval(numeros[i]) //i
fimpara

fimalgoritmo


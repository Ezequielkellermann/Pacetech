algoritmo "Faça um algoritmo que a partir de um salario informado pelo usuario, obtenha como retorno o salario aumentado em 30%"
// Autor : Ezequiel Kellermann

var
   salario, salarioaumentado: real
inicio
      escreval ("*********************************************")
      escreval ("Informe o salario: R$ ")
      leia(salario)
      salarioaumentado <- salario * 1.3
      escreval ("O salario com o reajuste de 30% é: R$ ", salarioaumentado)
      escreval ("*********************************************")
fimalgoritmo


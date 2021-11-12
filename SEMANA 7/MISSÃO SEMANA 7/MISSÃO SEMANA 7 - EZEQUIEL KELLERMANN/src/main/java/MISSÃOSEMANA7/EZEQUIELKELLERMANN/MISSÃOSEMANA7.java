package MISSÃOSEMANA7.EZEQUIELKELLERMANN;

import java.util.Scanner; //importa Scanner

public class MISSÃOSEMANA7 {

    public static void main(String[] args) {

        Scanner console = new Scanner(System.in); //Inicializa Scanner
        
        char continuar = 'S'; //Inicializa variavel para entrar pela primeira vez no looping

        while (continuar == 's' || continuar == 'S') { //Se variavel lida for S minusculo ou maiusculo realiza o looping

            System.out.print("\nInsira o nome do empregado 1: "); //Solicita o nome do empregado 1
            String nome1 = console.nextLine(); //Atribui informação passada pelo usuario a variavel
            System.out.print("Insira o sobrenome do empregado 1: "); //Solicita o sobrenome do empregado 1
            String sobrenome1 = console.nextLine(); //Atribui informação passada pelo usuario a variavel
            System.out.print("Insira o salário do empregado 1: "); //Solicita o salario do empregado 1
            float salario1 = console.nextFloat(); //Atribui informação passada pelo usuario a variavel
            console.nextLine(); //Ajusta o parametro esperado "Enter" corrigindo a nova linha para digitação
            
            empregado numero1 = new empregado(nome1, sobrenome1, salario1); //Inicializa classe para empregado 1 e passa os atributos

            System.out.print("\nInsira o nome do empregado 2: "); //Solicita o nome do empregado 2
            String nome2 = console.nextLine(); //Atribui informação passada pelo usuario a variavel
            System.out.print("Insira o sobrenome do empregado 2: "); //Solicita o sobrenome do empregado 2
            String sobrenome2 = console.nextLine(); //Atribui informação passada pelo usuario a variavel
            System.out.print("Insira o salário do empregado 2: "); //Solicita o salario do empregado 2
            float salario2 = console.nextFloat(); //Atribui informação passada pelo usuario a variavel
            console.nextLine(); //Ajusta o parametro esperado "Enter" corrigindo a nova linha para digitação

            empregado numero2 = new empregado(nome2, sobrenome2, salario2); //Inicializa classe para empregado 2 e passa os atributos

            System.out.println("\nO salario anual de " + numero1.getNome() + " "
                    + numero1.getSobrenome() + " é: " + numero1.getsalarioanual()); //Imprime nome, sobrenome e salario anual do empregado 1
            System.out.println("O salario anual de " + numero2.getNome()+ " "
                    + numero2.getSobrenome() + " é: " + numero2.getsalarioanual() + "\n"); //Imprime nome, sobrenome e salario anual do empregado 2
            System.out.println("O salario anual com reajuste de 10% de "
                    + numero1.getNome() + " " + numero1.getSobrenome() + " é: " + numero1.getsalariocomporcentagem()); //Imprime nome, sobrenome e salario anual com acrescimo de 10% do empregado 1
            System.out.println("O salario anual com reajuste de 10% de "
                    + numero2.getNome() + " " + numero2.getSobrenome() + " é: " + numero2.getsalariocomporcentagem() + "\n"); //Imprime nome, sobrenome e salario anual com acrescimo de 10% do empregado 1
            System.out.print("Deseja realizar novos cadastros ? S-SIM / N-NÃO: "); //Imprime opção para o usuario realizar novos cadastros ou encerrar a aplicação
            continuar = console.next().charAt(0); //Atribui informação passada pelo usuario a variavel Referenciando somente a primeira letra 
            console.nextLine(); //Ajusta o parametro esperado "Enter" corrigindo a nova linha para digitação

        }
    }
}

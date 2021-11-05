
package MISSÃOSEMANA6.EZEQUIELKELLERMANN;

import java.util.Scanner; //importa o Scanner para leitura de dados

public class Ezequiel_Kellermann {

   public static void main(String[] args) {
       
       Scanner console = new Scanner(System.in);
       //Inicializa variaveis que serão utilizadas
       int opcaomenu = 0;
       double tempentrada, tempsaida, cotdolar, valorent, valorsai;
             
       while (opcaomenu != 5){ //Inicializa looping com menu e as ações do Switch
       System.out.println("Digite o numero da opção que deseja selecionar");
       System.out.println("Digite 1: Para converter temperatura de Celsius para Fahrenheit");
       System.out.println("Digite 2: Para converter a temperatura de Fahrenheit para Celsius");
       System.out.println("Digite 3: Para converter moeda de Reais para Dólares");
       System.out.println("Digite 4: Para converter moeda de Dólares para Reais");
       System.out.println("Digite 5: Para finalizar a aplicação");
       System.out.print("Opção escolhida: ");
       opcaomenu = Integer.parseInt(console.nextLine());
              
       switch (opcaomenu) { //switch com as opções possiveis no menu e a ação de cada uma deve realizar
           
           case 1: //caso a opção seja converter Celsius em Farenheit
            System.out.println("");
            System.out.print("Escreva a temperatura em Celsius: "); //solicita a entrada da temperatura em Celsius
            tempentrada = Double.parseDouble(console.nextLine()); //Armazena temperatura na variavel
            tempsaida = ((tempentrada * 1.8) + 32); //Realiza a conversão da temperatura e armazena na variavel
            System.out.println("A temperatura em Fahrenheit é " + tempsaida + "  °F"); //imprime o resultado da conversão
            System.out.println("");
            break;
            
            case 2: //caso a opção seja converter Farenheit em Celsius
            System.out.println("");
            System.out.print("Escreva a temperatura em Fahrenheit: "); //solicita a entrada da temperatura em Fahrenheit
            tempentrada = Double.parseDouble(console.nextLine()); //Armazena temperatura na variavel
            tempsaida = ((tempentrada - 32) / 1.8); //Realiza a conversão da temperatura e armazena na variavel
            System.out.println("A temperatura em Celsius é " + tempsaida + " °C"); //imprime o resultado da conversão
            System.out.println("");
            break;
            
            case 3: //caso a opção seja converter Reais para Dólares
            System.out.println("");
            System.out.print("Escreva a cotação atual do Dólar (1 dólar equivale a quantos Reais),(Favor utilizar ponto para casas decimais): "); //Solicita a cotação atual do dolar
            cotdolar = Double.parseDouble(console.nextLine()); //Armazena cotação na variavel
            System.out.print("Escreva o valor em reais que deseja converter em Dólares: "); //Solicita o valor em Dólares que deseja converter para Reais
            valorent = Double.parseDouble(console.nextLine()); //Armazena valor na variavel
            valorsai = ( valorent / cotdolar); //Realiza o calculo de conversão
            System.out.println("O valor inserido convertido em dólares é: " + valorsai + " US$"); //Imprime o resultado da conversão
            System.out.println("");
            break;
            
            case 4: //caso a opção seja converter Dólares para Reais
            System.out.println("");
            System.out.print("Escreva a cotação atual do Dólar (1 dólar equivale a quantos Reais),(Favor utilizar ponto para casas decimais): "); //Solicita a cotação atual do dolar
            cotdolar = Double.parseDouble(console.nextLine()); //Armazena cotação na variavel
            System.out.print("Escreva o valor em dólares que deseja converter em Reais: "); //Solicita o valor em Reais que deseja converter para Dólares
            valorent = Double.parseDouble(console.nextLine()); //Armazena valor na variavel
            valorsai = ( valorent * cotdolar); //Realiza o calculo de conversão
            System.out.println("O valor inserido convertido em Reais é: " + valorsai + " R$"); //Imprime o resultado da conversão
            System.out.println("");
            break;
       
            default: // outro caso diferente do valor 5 informa que o valor não é valido e apresenta o menu de opções novamente
            if (opcaomenu != 5) {
                System.out.println("O valor inserido não é válido");
                System.out.println("Favor inserir um valor valido do menu");
                System.out.println(""); 
            } else {
                break;
             }
            
            }
          }
    }
}
          


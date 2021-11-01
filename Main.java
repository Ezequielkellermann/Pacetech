
package TESTE;

import java.util.Scanner;

public class Main {

   
    public static void main(String[] args) {
    
       Scanner console = new Scanner(System.in);
       int opcaomenu =0; 
       
       while (opcaomenu != 5){
       System.out.println("Digite o numero da opção que deseja selecionar");
       System.out.println("Digite 1: Para converter temperatura de Celsius para Fahrenheit");
       System.out.println("Digite 2: Para converter a temperatura de Fahrenheit para Celsius");
       System.out.println("Digite 3: Para converter moeda de Reais para Dólares");
       System.out.println("Digite 4: Para converter moeda de Dólares para Reais");
       System.out.println("Digite 5: Para finalizar a aplicação");
       opcaomenu = Integer.parseInt(console.nextLine());
       System.out.println("Numero: " + opcaomenu);
       //System ("cls");
       }
        
    }
    
}

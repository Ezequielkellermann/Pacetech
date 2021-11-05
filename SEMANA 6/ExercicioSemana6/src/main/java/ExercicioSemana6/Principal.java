package ExercicioSemana6;

import java.util.Scanner; //importa o Scanner para leitura de dados

public class Principal {

    public static void main(String[] args) {

        Scanner console = new Scanner(System.in);

        int opcaomenu = 0;
        //int i = 0;
        double tempentrada, tempsaida;

        while (opcaomenu != 3) {
            System.out.println("Digite o numero da opção que deseja selecionar");
            System.out.println("Digite 1: Para converter temperatura de Celsius para Fahrenheit");
            System.out.println("Digite 2: Para converter a temperatura de Fahrenheit para Celsius");
            System.out.println("Digite 3: Para finalizar a aplicação");
            System.out.print("Opção escolhida: ");
            opcaomenu = console.nextInt();

            System.out.println("Opção: " + opcaomenu);
            switch (opcaomenu) {

                case 1:
                    //i=0;
                    tempentrada = 1;
                    for (int i=0; i < 101; i++) {
                        tempsaida = ((tempentrada * 1.8) + 32);
                        System.out.println("A temperatura " + i + " °C igual a " + tempsaida + " °F");
                        tempentrada = tempentrada + 1;
                    }
                    break;

                case 2:
                    //i=0;
                    tempentrada = 1;
                    for (int i=0; i < 101; i++) {
                        tempsaida = (tempentrada - 32) / 1.8;
                        System.out.println("A temperatura " + i + " °F igual a " + tempsaida + " °C");
                        tempentrada = tempentrada + 1;
                    }
                    break;

                default: // outro caso diferente do valor 5 informa que o valor não é valido e apresenta o menu de opções novamente
                    if (opcaomenu != 3) {
                        System.out.println("O valor inserido não é válido");
                        System.out.println("Favor inserir um valor valido do menu");
                        System.out.println("");
                    }
                    break;
            }
        }
    }

}

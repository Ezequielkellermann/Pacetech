package exerciciosemana7;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        
        Scanner console = new Scanner(System.in);
        Scanner console2 = new Scanner(System.in);
        
        System.out.print("Insira o nome do aluno 1: ");
        String nome1 = console2.nextLine();
        System.out.print("Insira a matricula do aluno 1: ");
        int matricula1 = console.nextInt();
        System.out.print("Insira a nota da prova do aluno 1: ");
        float notaprova1 = console.nextFloat();
        System.out.print("Insira a nota do trabalho do aluno 1: ");
        float notatrabalho1 = console.nextFloat();
        
        aluno aluno1 = new aluno(nome1, matricula1, notaprova1, notatrabalho1);
        
        System.out.print("\nInsira o nome do aluno 2: ");
        String nome2 = console2.nextLine();
        System.out.print("Insira a matricula do aluno 2: ");
        int matricula2 = console.nextInt();
        System.out.print("Insira a nota da prova do aluno 2: ");
        float notaprova2 = console.nextFloat();
        System.out.print("Insira a nota do trabalho do aluno 2: ");
        float notatrabalho2 = console.nextFloat();
        
        aluno aluno2 = new aluno(nome2, matricula2, notaprova2, notatrabalho2);

        System.out.println("\nO aluno 1 " + aluno1.getNome() + " com a matricula numero " 
                + aluno1.getMatricula() + " obteve nota da prova = " + aluno1.getNotaprova() + " e nota do trabalho = " + aluno1.getNotatrabalho());
        System.out.println("Media final do aluno 1:  " + aluno1.getmediafinal());

        System.out.println("\nO aluno 2 " + aluno2.getNome() + " com a matricula numero " + aluno2.getMatricula() 
                + " e nota da prova = " + aluno2.getNotaprova() + " e nota do trabalho = " + aluno2.getNotatrabalho());
        System.out.println("Media final do aluno 2:  " + aluno2.getmediafinal());
    }

}

package MISSÃOSEMANA7.EZEQUIELKELLERMANN;

public class empregado {

    private String nome;
    private String sobrenome;
    private float salariomensal;

    public empregado(String nome, String sobrenome, float salariomensal) {
        this.setNome(nome);
        this.setSobrenome(sobrenome);
        this.setSalariomensal(salariomensal);
      }
    
    public double getsalarioanual (){ //Realiza calculo do salario anual dos empregados
        return salariomensal * 12;
    }
    
    public double getsalariocomporcentagem (){ //Realiza calculo do salario com acrescimo de 10% dos empregados
        return (salariomensal + (salariomensal * 0.10)) * 12;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    public float getSalariomensal() {
        return salariomensal;
    }

    public void setSalariomensal(float salariomensal) {
        if (salariomensal < 0) { //Realiza verificação se o valor do salário for menor que 0 a variavel é zerada automaticamente
            this.salariomensal = 0;
        } else { //senão o atributo informado pelo usuario é atribuido
            this.salariomensal = salariomensal;
        }

    }

}

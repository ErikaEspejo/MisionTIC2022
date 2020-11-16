import java.util.Scanner;

public class competenciaErika {

    public static String competencia(String x) {
       String validacion = "1";
       String tipoCompetencia;
        if (x.contains(validacion)){
            tipoCompetencia = "DIFICIL";
            return tipoCompetencia;
        }else{
            tipoCompetencia = "FACIL";
            return tipoCompetencia;
        }    
    } 

  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int numero = Integer.parseInt(sc.nextLine());
    String encuesta=sc.nextLine(); 
    System.out.println(competencia(encuesta));
  }
}
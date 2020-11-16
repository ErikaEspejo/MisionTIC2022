import java.util.Scanner;

public class universidadesErika {

  public static String seleccionItem(String x) {
    String[] universidad = x.split("\\.");
    return universidad[1];
  }
     
    
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int numero = Integer.parseInt(sc.nextLine());
    
    String[] nombresUn = new String[numero];

    for (int i=0;i<numero;i++){
      nombresUn[i]=sc.next();
    }

    for (int i=0; i<numero;i++){
      System.out.println(seleccionItem(nombresUn[i]));
    }
  }
}
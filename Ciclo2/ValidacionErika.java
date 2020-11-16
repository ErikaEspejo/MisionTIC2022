import java.util.Scanner;

public class ValidacionErika {

    public static String validacion(int A, int B,int C,int D) {
        String resultado;
        if (B>C && D>A && (C+D)>(A+B) && C>=0 && D>=0 && A%2==0){
            resultado="Valores aceptados";
            return resultado;
        } else {
            resultado="Valores no aceptados";
            return resultado;
        }   
    } 

  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int a = Integer.parseInt(sc.nextLine());
    int b = Integer.parseInt(sc.nextLine());
    int c = Integer.parseInt(sc.nextLine());
    int d = Integer.parseInt(sc.nextLine());

    System.out.println(validacion(a,b,c,d));
  }
}
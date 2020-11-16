import java.util.Scanner;

public class DivocErika {

    public static Integer superaPoblacion(double pobA, double pobB) {
        int i=1;
        while (pobB<pobA){
            pobA*=1.02;
            pobB*=1.03;
            i++;
        }
        return i; 
    } 

  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    double n = Double.parseDouble(sc.nextLine());
    double m = Double.parseDouble(sc.nextLine());

    System.out.println(superaPoblacion(n,m));
  }
}
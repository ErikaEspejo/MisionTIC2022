import java.util.Scanner;

public class Edades {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        int edad = Integer.parseInt(sc.nextLine().trim());
        int años = edad/365;
        int meses = (edad%365)/30;
        int dias = (edad%365)%30;
        //int dias = Integer.parseInt(sc.nextLine())%365; 
        System.out.println(" " + años + " años(s)");
        System.out.println(meses + " mes(es)");
        System.out.println(dias + " día(s)");

    }
}

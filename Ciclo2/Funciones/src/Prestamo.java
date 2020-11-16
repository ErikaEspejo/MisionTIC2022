/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author User
 */
import java.util.Scanner;

public class Prestamo {
    
    public static double capitalFinal(int capitalInicial, int tiempo , double interes) {
        return (capitalInicial * Math.pow(1 + (interes/100.0), tiempo));        
    }    
    
    public static void main(String[] args) {
        
        Scanner scan = new Scanner(System.in);
        System.out.println("Porfavor ingrese el capital que fue prestado: ");
        int capitalInicial = scan.nextInt();
        
        System.out.println("Porfavor ingrese el tiempo en que deberá pagarse en meses:");
        int tiempo = scan.nextInt();
        
        System.out.println("Porfavor ingrese el interés compuesto mensual:");
        double interes = scan.nextDouble();
        
        System.out.println("Al cabo de " + tiempo + " meses, usted deberá pagar $" + capitalFinal(capitalInicial, tiempo, interes));
        
    }
}

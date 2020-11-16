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

public class Volumen {
    public static double calcularVolumenEsfera(Scanner scan){
        System.out.println("Ingrese radio de la esfera:");
        double radio = scan.nextDouble();
        double volumenEsfera = (4.0/3.0)*Math.PI*Math.pow(radio, 3);
        return volumenEsfera;
    }
    
    public static double calcularVolumenCono(Scanner scan){
        System.out.println("Ingrese radio del cono:");
        double radio = scan.nextDouble();
        System.out.println("Ingrese altura del cono:");
        double height = scan.nextDouble();
        double volumenCono = (Math.PI*Math.pow(radio,2)*height)/3.0;
        return volumenCono;
    }
    
    public static void procesamientoComando(Scanner scan) {
        boolean flag = true;
        while (flag) {            
            int option = scan.nextInt();
            switch (option) {
                case 1:
                    System.out.println("El volumen de la esfera es: " + calcularVolumenEsfera(scan));
                    break;
                case 2:
                    System.out.println("El volumen del cono es: " + calcularVolumenCono(scan));
                    break;
                case 3:
                    double volumenTotal = calcularVolumenCono(scan) + calcularVolumenEsfera(scan);
                    System.out.println("El volumen de la figura es: " + volumenTotal);
                    break;
                case 4:
                    flag = false;
                    System.out.println("Hasta luego.");
                    break;
            }            
        }        
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        
        System.out.println("Escoja una opción: ");
        System.out.println("1. Calcular volumen de esfera");
        System.out.println("2. Calcular volumen de cono");
        System.out.println("3. Calcular volumen total");
        System.out.println("4. Salir");
        procesamientoComando(scan);              
    }
}

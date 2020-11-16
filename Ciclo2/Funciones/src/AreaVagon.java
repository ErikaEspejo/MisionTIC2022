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

public class AreaVagon {
    public static double calcularAreaCirculo(Scanner scan){
        System.out.println("\nIngrese radio de la rueda: ");
        double radio = scan.nextDouble();
        double areaCirculo = Math.PI*Math.pow(radio, 2);
        return areaCirculo;
    }
    
    public static double calcularAreaCoche(Scanner scan){        
        System.out.println("\nIngrese base del coche de pasajeros:");
        double base = scan.nextDouble();
        System.out.println("Ingrese altura del coche de pasajeros:");
        double height = scan.nextDouble();
        double areaRectangulo = base*height;
        return areaRectangulo;
    }
    
    public static double areaRuedas (Scanner scan){
        System.out.println("\nIngrese numero de ruedas: ");                                      
        int numeroRuedas = scan.nextInt();
                    
        System.out.println("¿Las ruedas son iguales? Escriba \"SI\" en ese caso, sino escriba cualquier otra cosa.");
        String verificacionRuedas = scan.next();
                    
        double areaTotalRuedas = 0;
        if (verificacionRuedas.equalsIgnoreCase("SI")) {
            areaTotalRuedas = numeroRuedas * calcularAreaCirculo(scan);
        } else {
            for (int i = 1; i <= numeroRuedas; i++) {
                double areaRuedai = calcularAreaCirculo(scan);
                System.out.println("El área de la rueda " + i + " es " + areaRuedai);
                areaTotalRuedas += areaRuedai;                    
            }
        }
        return areaTotalRuedas;
    }
    
    public static void procesamientoComando(Scanner scan) {
        boolean flag = true;
        while (flag) {            
            int option = scan.nextInt();
            switch (option) {
                case 1:
                    System.out.println("\nEl area de la rueda es: " + calcularAreaCirculo(scan));
                    break;
                case 2:
                    System.out.println("\nEl area del coche de pasajeros es: " + calcularAreaCoche(scan));
                    break;
                case 3:                                                       
                    double areaTotal = calcularAreaCoche(scan) + areaRuedas(scan);                    
                    System.out.println("\nEl area del vagón es: " + areaTotal);
                    break;
                case 4:
                    flag = false;
                    System.out.println("\n\nHasta luego.");
                    break;
            }            
        }        
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        
        System.out.println("Escoja una opción: ");
        System.out.println("1. Calcular area de una rueda.");
        System.out.println("2. Calcular area del coche de pasajeros.");
        System.out.println("3. Calcular total del vagon.");
        System.out.println("4. Salir");
        
        procesamientoComando(scan);              
    }
}

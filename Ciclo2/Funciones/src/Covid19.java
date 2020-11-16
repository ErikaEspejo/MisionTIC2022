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

public class Covid19 {
    public static int calculoContagiados(int contagiados, int tiempo) {
        return (contagiados * (int) Math.pow(2,tiempo));
    }
    
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        
        System.out.println("Ingrese el numero de contagiados actuales: ");
        int contagiados = scan.nextInt();
        
        System.out.println("Ingrese el numero de días para el que quiere conocer la cantidad de contagiados, a partir de hoy: ");
        int tiempo = scan.nextInt();
        
        System.out.println("El numero de contagiados en " + tiempo + "días, será de: " + calculoContagiados(contagiados, tiempo) + " contagiados.");                             
    }
}

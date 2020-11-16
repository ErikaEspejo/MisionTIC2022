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

public class Main {
    public static int precioTresProductos(Scanner scan){
        int costo = 0;
        for (int i = 1; i <= 3; i++){
           System.out.println("Ingrese valor producto " + i);
           int cost = scan.nextInt();
           costo += cost;           
        }
        return costo;        
    }    
    
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int porSeparado = precioTresProductos(scan);
        System.out.println("Ingrese valor en combo:");
        int combo = scan.nextInt();
        System.out.println("El costo de los tres productos es: " + porSeparado);
        System.out.println("El costo en combo es: " + combo);
        if (porSeparado>combo){            
            System.out.println("Es más económico en combo.");
        } else{
            System.out.println("Es más económico por separado.");
        } 
    }            
}

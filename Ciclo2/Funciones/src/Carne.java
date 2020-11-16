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
public class Carne {
    
    public static int pesoTotalPorCarne(Scanner scan){
        System.out.println("\nIngrese tipo de carne: ");
        String tipoCarne = scan.next();
        
        System.out.println("\nIngrese número de " + tipoCarne + "s :");
        int numUnidades = scan.nextInt();
        
        System.out.println("\n¿Todas las(os) " + tipoCarne + "s pesan lo mismo?\nEsciba \"SI\" en ese caso, en caso contrario escriba cualquier otra cosa.");
        String validacionPesoUnidades = scan.next();
        
        int pesoTotalCarne =0;
        if (validacionPesoUnidades.equalsIgnoreCase("si")){
            System.out.println("\nIngrese peso de los " + tipoCarne + "s en kg");
            int pesoCadaUnidad = scan.nextInt();
            pesoTotalCarne = numUnidades * pesoCadaUnidad;            
        } else {
            for (int i = 1; i <= numUnidades; i++) {
                System.out.println("\nIngrese peso de la(el) " + tipoCarne + " número " + i);
                int pesoGallina_i = scan.nextInt();
                pesoTotalCarne += pesoGallina_i;
            }
        }
        
        System.out.println("El peso total de " + tipoCarne + "s es de: " + pesoTotalCarne);                
        return pesoTotalCarne;          
    }  
       
    public static void main(String[] args) {
      Scanner scan = new Scanner(System.in);
      
        System.out.println("Ingrese el numero de carnes: ");
        int numCarnes = scan.nextInt();
        
        int pesoTotalCarnes = 0;
        for (int i = 1; i <= numCarnes; i++) {
            int totalPorCarne = pesoTotalPorCarne(scan);
            pesoTotalCarnes += totalPorCarne;             
        }
        System.out.println("El peso total de carne  es de: " + pesoTotalCarnes);
    }         
}

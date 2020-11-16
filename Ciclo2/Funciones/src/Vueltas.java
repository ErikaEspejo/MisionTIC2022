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
public class Vueltas {
    
    public static int costoProducto(Scanner scan){
        System.out.println("\nIngrese el producto: ");
        String producto = scan.next();
        
        System.out.println("\nIngrese número de productos: ");
        int numUnidades = scan.nextInt();     
        
        System.out.println("Ingrese el costo de l producto: ");
        int costoProducto = scan.nextInt();
        
        int costoTotalProducto = costoProducto * numUnidades ;
        System.out.println("El costo total del producto \"" + producto + "\" es de $: " + costoTotalProducto);    
        return costoTotalProducto;
            
    }  
    
    public static int calculoCostoTotal(Scanner scan) {
        System.out.println("Ingrese el numero de productos diferentes: ");
        int numProductosDiferentes = scan.nextInt();
        
        int costoTotal = 0;
        for (int i = 1; i <= numProductosDiferentes; i++) {
            int totalPorProducto = costoProducto(scan);            
            costoTotal += totalPorProducto;             
        }
        System.out.println("El costo total de los productos es de: " + costoTotal);
        return costoTotal;
    }
    
    public static void calculoVueltas(Scanner scan, int costoTotal) {
        System.out.println("\nPor favor ingrese el valor del billete: ");
        int billete = scan.nextInt();
        
        if (billete > costoTotal) {
            System.out.println("Sus vueltas son: $" + (billete - costoTotal));
        } else if (billete < costoTotal) {
            System.out.println("El dinero no es suficiente. Queda debiendo $" + (costoTotal - billete));
        } else {
            System.out.println("Ha pagado el valor exacto, no debe ni tiene vueltas.");
        }        
        System.out.println("Gracias por usar nuestro servicio. Feliz día.");
    }
       
    public static void main(String[] args) {
      Scanner scan = new Scanner(System.in);
        int total = calculoCostoTotal(scan);
        calculoVueltas(scan, total);                  
    }         
}

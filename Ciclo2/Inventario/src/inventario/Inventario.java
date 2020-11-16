/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package inventario;
import java.util.ArrayList;
import java.util.Scanner;
/**
 *
 * @author ErikaEspejo
 */
public class Inventario {

    /**
     * @param args the command line arguments
     */
    
    static ArrayList<Vehiculo> vehicleList = new ArrayList<>();
    static String header = "***Inventario de vehículos***";
    static int stockParticulares = 100;
    static int stockComerciales = 100;
    static long particularPrice = 30_000_000;
    static long comercialPrice = 40_000_000;
    
    
    public static double ivaComputation (int particularQuantity, int comercialQuantity){
        int totalVehicles = particularQuantity + comercialQuantity;
        double iva = 0.2;
        if (totalVehicles <= 20) {
            for (int i = 2; i <= totalVehicles ; i++){
                iva -= 0.01;
            }    
        } else {
            iva = 0;
        }
        return iva;        
    }
    
    public static  long totalWithoutIVA (int particularQuantity, int comercialQuantity){
        long total = particularQuantity * particularPrice + comercialQuantity * comercialPrice;
        return total;
    }
    
    public static void printTicket (int particularQuantity, int comercialQuantity, String idBuyer) {
        if (stockComerciales<comercialQuantity || stockParticulares < particularQuantity){
            System.out.println("Lo sentimos no tenemos stock suficiente\n---");            
        } else {
            System.out.println("CONCESIONARIO UNCAR");
            System.out.println("UNCAR - UNIVA");
            System.out.println("NIT: 899.999.063");
            System.out.println("Cliente: " + idBuyer);
            System.out.println("Vehículo Cant Precio");
            System.out.println("Particular x" + particularQuantity + " $" + particularPrice);
            System.out.println("Comercial x" + comercialQuantity + " $" + comercialPrice);
            long totalIVA = (long) Math.ceil(totalWithoutIVA(particularQuantity, comercialQuantity) * ivaComputation(particularQuantity, comercialQuantity));                    
            System.out.println("Iva: " + totalIVA); 
            long total = totalWithoutIVA(particularQuantity, comercialQuantity) + totalIVA;
            System.out.println("Total: " + total);
            System.out.println("---");         
            stockComerciales -= comercialQuantity;
            stockParticulares -= particularQuantity;
        }        
    }
            
    public static void processCommands(Scanner scan){
        boolean flag = true;
        
        while (flag){
            String[] data = scan.nextLine().split("&");
            switch(data[0]) {
                case "1":
                    if (data[1].equalsIgnoreCase("Particular")) {
                        //String tipo,int pasajeros,int velocidad,  String placa, String color
                        Particular newParticular = new Particular(data[1],Integer.parseInt(data[2]),Integer.parseInt(data[3]),data[4],data[5]);
                        vehicleList.add(newParticular);
                    } else if (data[1].equalsIgnoreCase("Comercial")){
                        Comercial newComercial = new Comercial(data[1],Integer.parseInt(data[2]),Integer.parseInt(data[3]),data[4],Integer.parseInt(data[5]));
                        vehicleList.add(newComercial);
                    }
                    break;
                    
                case "2":
                    System.out.println(header);
                    for (int i = 0; i < vehicleList.size();i++){
                        System.out.println(vehicleList.get(i));
                    }
                    
                    break;
                
                case "3":
                    printTicket(Integer.parseInt(data[2]),Integer.parseInt( data[4]), data[5]);           
                    
                    break;
                    
                case "4":
                    System.out.println("Particular: " + stockParticulares);
                    System.out.println("Comercial: " + stockComerciales);
                    
                    break;
                    
                case "5":
                    flag = false;
                    break;
            }            
        }
    }
        
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        processCommands(scan);
    }
    
}

//Erika Espejo

import java.util.Scanner;

public class Carrito {

    static Articulo[] articleList = new Articulo[20];
    static int id = 0;
    static String header = "Centro Comercial Unaleño\nCompra más y Gasta Menos\nNIT: 899.999.063";
    static int totalArticleIndex = 0;

    //lee el comando y define que hacer de acuerdo a la opcion ingresada por el usuario
    public static void commandProcessing(Scanner scan) {
        boolean flag = true;
        
        while (flag) {
            String[] data = scan.nextLine().split("&");

            switch(data[0]) {
                case "1" :
                    Articulo newArticle = new Articulo(data[1],Integer.parseInt(data[2]),Double.parseDouble(data[3]));
                    articleAdd(newArticle);
                    break;
                
                case "2" : 
                    printTicket(data[1]);
                    break;

                case "3" :
                    flag = false;
                    break;
            }
        }      
    }

    //Agrega el articulo nuevo en una nueva posición del arreglo ListaArticulos en base a un nuevo objeto article de la clase Articulo
    public static void articleAdd(Articulo article) {
        articleList[totalArticleIndex] = article;
        totalArticleIndex++;        
    }

    //Calcula costo total del carrito sumando repetidamente el total por cada articulo mientras se recorre la lista de articulos
    public static double totalPurchase(){
        double total = 0;
        for (int i = 0; i < totalArticleIndex; i++) {
            total += articleList[i].totalPerArticle();
        }
        return total;
    }

    //Calcula descuento en base al total del pedido
    public static double discountComputation(double total) {
        double totalDiscount = 0;
        if (total <= 150_000) {
            totalDiscount = 0;
        } else if (total <= 300_000) {
            totalDiscount = total * 0.1;
        } else if (total <= 700_000) {
            totalDiscount = total * 0.15;
        } else {
            totalDiscount = total * 0.2;
        }

        return totalDiscount;
    }

    //Imprime la tirilla
    public static void printTicket(String id) {
        System.out.println(header);
        System.out.println("Cliente: " + id);
        System.out.println("Art Cant Precio");

        for (int i = 0; i < totalArticleIndex; i++) {
            System.out.println(articleList[i]);
        }

        double totalCost = totalPurchase();
        double discount = discountComputation(totalCost);
        System.out.println("Total: $" + (int)Math.ceil(totalCost - discount));
        System.out.println("En esta compra tu descuento fue: $" + (int)discount);
        System.out.println("Gracias por tu compra\n---");
        totalArticleIndex=0;
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        commandProcessing(scan);   
    }    
}
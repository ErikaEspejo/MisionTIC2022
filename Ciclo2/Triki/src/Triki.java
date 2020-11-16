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

public class Triki {
    
    public static void imprimirMatriz(String[][] matriz) {
        for (int i=0; i < matriz.length; i++) {
            System.out.println(matriz[i][0] + " " + matriz[i][1]+ " " + matriz[i][2]);
        }
    }
    
    public static boolean verificarMatriz(String[][] matriz) {
        boolean optionA = matriz[0][0].equalsIgnoreCase(matriz[1][1])&& matriz[0][0].equalsIgnoreCase(matriz[2][2])&&matriz[0][0].equalsIgnoreCase("X")|| matriz[0][0].equalsIgnoreCase(matriz[1][1])&& matriz[0][0].equalsIgnoreCase(matriz[2][2])&&matriz[0][0].equalsIgnoreCase("O");
        boolean optionB = matriz[0][2].equalsIgnoreCase(matriz[1][1])&& matriz[0][2].equalsIgnoreCase(matriz[2][0])&&matriz[2][0].equalsIgnoreCase("X")|| matriz[0][2].equalsIgnoreCase(matriz[1][1])&& matriz[0][2].equalsIgnoreCase(matriz[2][0])&&matriz[2][0].equalsIgnoreCase("O");
        boolean optionC = matriz[0][0].equalsIgnoreCase(matriz[0][1])&& matriz[0][0].equalsIgnoreCase(matriz[0][2])&&matriz[0][2].equalsIgnoreCase("X")|| matriz[0][0].equalsIgnoreCase(matriz[0][1])&& matriz[0][0].equalsIgnoreCase(matriz[0][2])&&matriz[0][2].equalsIgnoreCase("O");
        boolean optionD = matriz[1][0].equalsIgnoreCase(matriz[1][1])&& matriz[1][0].equalsIgnoreCase(matriz[1][2])&&matriz[1][2].equalsIgnoreCase("X")|| matriz[1][0].equalsIgnoreCase(matriz[1][1])&& matriz[1][0].equalsIgnoreCase(matriz[1][2])&&matriz[1][2].equalsIgnoreCase("O");
        boolean optionE = matriz[2][0].equalsIgnoreCase(matriz[2][1])&& matriz[2][0].equalsIgnoreCase(matriz[2][2])&&matriz[2][2].equalsIgnoreCase("X")|| matriz[2][0].equalsIgnoreCase(matriz[2][1])&& matriz[2][0].equalsIgnoreCase(matriz[2][2])&&matriz[2][2].equalsIgnoreCase("O");
        boolean optionF = matriz[0][0].equalsIgnoreCase(matriz[1][0])&& matriz[0][0].equalsIgnoreCase(matriz[2][0])&&matriz[2][0].equalsIgnoreCase("X")|| matriz[0][0].equalsIgnoreCase(matriz[1][0])&& matriz[0][0].equalsIgnoreCase(matriz[2][0])&&matriz[2][0].equalsIgnoreCase("O");
        boolean optionG = matriz[0][1].equalsIgnoreCase(matriz[1][1])&& matriz[0][1].equalsIgnoreCase(matriz[2][1])&&matriz[2][1].equalsIgnoreCase("X")|| matriz[0][1].equalsIgnoreCase(matriz[1][1])&& matriz[0][1].equalsIgnoreCase(matriz[2][1])&&matriz[2][1].equalsIgnoreCase("O");
        boolean optionH = matriz[0][2].equalsIgnoreCase(matriz[1][2])&& matriz[0][2].equalsIgnoreCase(matriz[2][2])&&matriz[2][2].equalsIgnoreCase("X")|| matriz[0][2].equalsIgnoreCase(matriz[1][2])&& matriz[0][2].equalsIgnoreCase(matriz[2][2])&&matriz[2][2].equalsIgnoreCase("O");
        
        boolean ganador = false; 
        if (optionA || optionB || optionC || optionD || optionE || optionF || optionG || optionH){
            System.out.println("Has ganado!");
            ganador = true;
        } else {
            System.out.println("No hay ganador, siguiente turno...");
        }
        return ganador;       
    }
    
    public static void juego(Scanner scan,String[][] matrizInicial) {
        boolean flag = true;
        imprimirMatriz(matrizInicial); 
        while (flag) {
            System.out.println("Ingrese la posición, primero fila, luego columna separadas por enter");
            int x = scan.nextInt();
            int y = scan.nextInt();
            System.out.println("Ingrese la marca: (O/X)");
            String marca = scan.next();
            matrizInicial[x][y]= marca;
            imprimirMatriz(matrizInicial); 
            boolean ganador = verificarMatriz(matrizInicial); 
            if(ganador){
                flag=false;
            }
        }
    }
    
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        String [][] matrizInicial = {{"a","a","a"},{"a","a","a"},{"a","a","a"}};
        juego(scan,matrizInicial);
    }
}
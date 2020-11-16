/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ciclos;

/**
 *
 * @author User
 */

public class TablasMultiplicar {
    public static void main(String[] args) {
        for (int i = 1; i <= 9; i++) {
            for (int j = 1; j <= 10; j++){
                System.out.println(i + " x " + j + " = " + (i * j));                
            }
            System.out.println(" ");
        }
    }
    
}

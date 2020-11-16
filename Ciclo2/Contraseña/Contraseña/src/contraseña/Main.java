/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package contraseña;

import java.util.Scanner;
/**
 *
 * @author User
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        String passIngresada = scan.next();
        Contraseña pass = new Contraseña(passIngresada);
        pass.esFuerte();
        pass.cambiarContraseña();
        pass.esFuerte();
    }
    
}

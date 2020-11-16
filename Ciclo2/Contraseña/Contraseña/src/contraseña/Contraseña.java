/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package contraseña;

/**
 *
 * @author User
 */
import java.util.Scanner;
public class Contraseña {    
    public String contraseña;

    public Contraseña(String contraseña) {     
        this.contraseña = contraseña;
    }
    
    public void esFuerte(){
        int length;
        length = contraseña.length();
        int contadorMayusculas = 0, contadorMinusculas = 0, contadorNumeros = 0;
        for (int i = 0; i < length; i++) {
            if(contraseña.charAt(i)>64 && contraseña.charAt(i)<91){
                contadorMayusculas++;
            }
            if(contraseña.charAt(i)>96 && contraseña.charAt(i)<123){
                contadorMinusculas++;
            }
            if (contraseña.charAt(i)>47 && contraseña.charAt(i)<58){
                contadorNumeros++;
            }
        }
        if (contadorMayusculas >= 1 && contadorMinusculas >=1 && contadorNumeros > 5) {
            System.out.println("Es fuerte");
        } else {
            System.out.println("No es fuerte");
        }        
    }
    
    public void cambiarContraseña(){
        Scanner scan = new Scanner(System.in);
        String newPassword = scan.nextLine();
        contraseña = newPassword;
        
    }        
    
    @Override
    public String toString() {
        String information = "Length: " + contraseña.length() + "; Password: " + contraseña;        
        return information;
    }
}

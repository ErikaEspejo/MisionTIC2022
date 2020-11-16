/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Swing;

import javax.swing.*;

/**
 *
 * @author User
 */
public class CrandoMarcoLocalizacion {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        miMarco marco1 = new miMarco();
        marco1.setVisible(true);
        marco1.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
    
}

class miMarco extends JFrame{
    public miMarco(){
        //setSize(500,300); //tamaño del frame
        //setLocation(500, 300); //ubicación del frame en px
        setBounds(500,300, 550, 250); //añade tamaño y ubicación del frame
        //setResizable(false); //decidir si se puede cambiar o no el tamaño de la ventana
        //setExtendedState(JFrame.MAXIMIZED_BOTH); //ampliar la ventana a tamaño completo (maximizar)
        setTitle("Mi Ventana"); //pone el titulo del frame
    
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Swing;

import java.awt.Toolkit;
import javax.swing.JFrame;
import java.awt.*;

/**
 *
 * @author User
 */
public class CreandoMarcoCentrado {
    public static void main(String[] args) {
       MarcoCentrado miMarco = new MarcoCentrado();
       miMarco.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
       miMarco.setVisible(true);
    }       
}

class MarcoCentrado extends  JFrame{
    public MarcoCentrado(){
        Toolkit miPantalla = Toolkit.getDefaultToolkit(); //Accede a los valores por defecto de la mquina
        Dimension tamañoPantalla = miPantalla.getScreenSize(); //accede al tamaño de la pantalla
        int alturaPantalla = tamañoPantalla.height; //asigna la alutra de la pantalla a una variable
        int anchoPantalla = tamañoPantalla.width; //asigna el ancho de la pantalla a una variable
        setSize(anchoPantalla/2, alturaPantalla/2); //asigna las dimensiones de la ventana tomando como base el ancho y alto de la pantalla
        setLocation(anchoPantalla/4, alturaPantalla/4); //asigna la ubicación de la ventana tomando como base el ancho y alto de la pantalla 
        setTitle("Marco Centrado");//asigna titulo
        Image miIcono = miPantalla.getImage("src/holamundo1/images.png"); //creaobjeto imagen con una imagen en especifico
        setIconImage(miIcono); //Asigna la imagen como icono de la ventana
        
    }
}
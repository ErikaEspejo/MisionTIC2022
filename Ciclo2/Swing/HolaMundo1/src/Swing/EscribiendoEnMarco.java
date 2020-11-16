/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Swing;

/**
 *
 * @author ErikaEspejo
 */
import javax.swing.*;
import java.awt.*;

public class EscribiendoEnMarco {
    public static void main(String[] args) {
        MarcoConTexto miMarco = new MarcoConTexto(); 
        miMarco.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }     
}

class MarcoConTexto extends JFrame{
    public MarcoConTexto(){
        setVisible(true);
        setSize(600, 450);
        setLocation(400, 200);
        setTitle("Primer Texto");
        Lamina miLamina = new Lamina(); //se instancia la clase Lamina
        add(miLamina); //Se añade la lamina con el label al marco
    }
}

class  Lamina extends JPanel{
    @Override //paint component se encuentra en la clase Component, del cual hereda Jpanel, por eso se hace polimorfismo por sobreescritura
    public  void paintComponent(Graphics g){
        super.paintComponent(g); //dibuja una lamina transparente (trabajo original de la clase JPanel)
        g.drawString("Estamos aprendiendo Swing", 100, 100); //dibuja un label
    }
}
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Swing;

import javax.swing.*;
import java.awt.*;
import java.awt.geom.Ellipse2D;
import java.awt.geom.Line2D;
import java.awt.geom.Rectangle2D;
/**
 *
 * @autor: ErikaEspejo 
 * @fecha: Nov 8, 2020
 */
public class PruebaDibujo {
    public static void main(String[] args) {
        MarcoConDibujo miMarco = new MarcoConDibujo();
        miMarco.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        miMarco.setVisible(true);
        
    }
}

class MarcoConDibujo extends JFrame {
    
    public MarcoConDibujo(){
        setTitle("Prueba de Dibujo");
        setSize(400, 400);
        LaminaConFiguras miLamina = new LaminaConFiguras();
        add(miLamina);
        
        
    }
}

class LaminaConFiguras extends JPanel{
    @Override
    public void paintComponent(Graphics g){
        super.paintComponent(g);
        //g.drawRect(50, 50, 200, 200); //dibuja figuras sin la posibilidad de rotarlo, editar grueso de linea, etc...
        //g.drawLine(0, 0, 400, 400);//dibuja figuras sin la posibilidad de rotarlo, editar grueso de linea, etc...
        //g.drawArc(50, 50, 200, 200, 120, 150);//dibuja figuras sin la posibilidad de rotarlo, editar grueso de linea, etc...
        Graphics2D g2 = (Graphics2D) g; //se instancia g2 de la clase Graphics
        Rectangle2D rectangulo = new Rectangle2D.Double(100, 100, 200.25, 150); //Se instancia rectangle.double
        g2.draw(rectangulo); //se dibuja el rectanglo
        Ellipse2D elipse = new Ellipse2D.Double(); //Se instancia elipse.double
        elipse.setFrame(rectangulo); //Se asignan las medidas del rectangulo en que e¿queda inscrito
        g2.draw(elipse); //se dibuja elipse
        g2.draw(new Line2D.Double(100,100,300,250)); //se dibuja linea instanciandola directamnete
        double centroX = rectangulo.getCenterX(); //Se obtiene centro de rectangulo
        double centroY = rectangulo.getCenterY();//Se obtiene centro de rectangulo
        double radio = 150;
        Ellipse2D circulo = new Ellipse2D.Double(); 
        circulo.setFrameFromCenter(centroX, centroY, centroX+radio, centroY+radio);
        g2.draw(circulo);
    }
}

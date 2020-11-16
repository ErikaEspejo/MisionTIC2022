/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package inventario;

/**
 *
 * @author ErikaEspejo
 */
public class Particular extends Vehiculo{
    public String color;
    
    public Particular(String tipo,int pasajeros,int velocidad,  String placa, String color) {
        super(tipo,pasajeros,velocidad,placa);
        this.color = color;
    }
    
    @Override
    public String toString() {
        String information = "Vehículo " + tipo + " - Placa: " + placa +"\nVelocidad: " + velocidad + " km/h\npasajeros: " + pasajeros + "\ncolor: " + color;
        return information;
    }
}

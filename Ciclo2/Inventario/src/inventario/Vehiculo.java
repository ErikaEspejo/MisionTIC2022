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
public class Vehiculo {
    public int velocidad;
    public int pasajeros;
    public String placa;
    public String tipo;
    
    public Vehiculo(String tipo,int pasajeros,int velocidad,  String placa) {
        this.velocidad = velocidad;
        this.pasajeros = pasajeros;
        this.placa = placa;
        this.tipo = tipo;
    }
    
   @Override
    public String toString() {
        String information = "Vehículo " + tipo + " - Placa: " + placa +"\nVelocidad: " + velocidad + " km/h\npasajeros: " + pasajeros ;
        return information;
    }
    
}

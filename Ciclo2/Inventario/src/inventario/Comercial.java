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
public class Comercial extends Vehiculo{
    public int cargaMaxima;
    
    public Comercial(String tipo,int pasajeros,int velocidad,  String placa,int cargaMaxima) {
        super(tipo,pasajeros,velocidad,placa);
        this.cargaMaxima = cargaMaxima;
    }
    
    @Override
    public String toString() {
        String information = "Vehículo " + tipo + " - Placa: " + placa +"\nVelocidad: " + velocidad + " km/h\npasajeros: " + pasajeros + "\nCarga máxima: " + cargaMaxima + "kg";
        return information;
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.monitoria.libreria.modelos;
import javax.persistence.*;

/**
 *
 * @autor: ErikaEspejo 
 * @fecha: Nov 28, 2020
 */
@Entity
@Table (name = "clientes")
public class Cliente {
    @Id
    @Column (name = "idclientes")
    @GeneratedValue
    private Long id;
    
    @Column 
    private String nombres;
    
    @Column 
    private String email;
    
    @Column 
    private String telefono;

    
    public Long getId() {
        return id;
    }

    public String getNombres() {
        return nombres;
    }

    public String getEmail() {
        return email;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

   
    
    

    
}

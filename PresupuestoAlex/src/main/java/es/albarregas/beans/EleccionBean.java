/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.beans;

import java.io.Serializable;

/**
 *
 * @author Alex
 */
public class EleccionBean implements Serializable {
    
    private boolean edificio;
    private boolean contenido;

    public boolean getEdificio() {
        return edificio;
    }

    public void setEdificio(boolean edificio) {
        this.edificio = edificio;
    }

    public boolean getContenido() {
        return contenido;
    }

    public void setContenido(boolean contenido) {
        this.contenido = contenido;
    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package registrosbd;

import java.util.Objects;

/**
 *
 * @author diana
 */
public class Cliente {

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public int getCiudad() {
        return ciudad;
    }

    public void setCiudad(int ciudad) {
        this.ciudad = ciudad;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getNumCelular() {
        return numCelular;
    }

    public void setNumCelular(String numCelular) {
        this.numCelular = numCelular;
    }

    public float getFechaNac() {
        return fechaNac;
    }

    public void setFechaNac(float fechaNac) {
        this.fechaNac = fechaNac;
    }

    public int getActivo() {
        return activo;
    }

    public void setActivo(int activo) {
        this.activo = activo;
    }
    private int id;
    private String nombres;
    private String apellidos;
    private int ciudad;
    private String direccion ;
    private String numCelular ;
    private float fechaNac;
    private int activo;

    @Override
    public String toString() {
        return "Cliente{" + "id=" + id + ", nombres=" + nombres + ", apellidos=" + apellidos + ", ciudad=" + ciudad + ", direccion=" + direccion + ", numCelular=" + numCelular + ", fechaNac=" + fechaNac + ", activo=" + activo + '}';
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 29 * hash + this.id;
        hash = 29 * hash + Objects.hashCode(this.nombres);
        hash = 29 * hash + Objects.hashCode(this.apellidos);
        hash = 29 * hash + this.ciudad;
        hash = 29 * hash + Objects.hashCode(this.direccion);
        hash = 29 * hash + Objects.hashCode(this.numCelular);
        hash = 29 * hash + Float.floatToIntBits(this.fechaNac);
        hash = 29 * hash + this.activo;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Cliente other = (Cliente) obj;
        if (this.id != other.id) {
            return false;
        }
        if (this.ciudad != other.ciudad) {
            return false;
        }
        if (Float.floatToIntBits(this.fechaNac) != Float.floatToIntBits(other.fechaNac)) {
            return false;
        }
        if (this.activo != other.activo) {
            return false;
        }
        if (!Objects.equals(this.nombres, other.nombres)) {
            return false;
        }
        if (!Objects.equals(this.apellidos, other.apellidos)) {
            return false;
        }
        if (!Objects.equals(this.direccion, other.direccion)) {
            return false;
        }
        if (!Objects.equals(this.numCelular, other.numCelular)) {
            return false;
        }
        return true;
    }

    public Cliente(int id, String nombres, String apellidos, int ciudad, String direccion, String numCelular, float fechaNac, int activo) {
        this.id = id;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.ciudad = ciudad;
        this.direccion = direccion;
        this.numCelular = numCelular;
        this.fechaNac = fechaNac;
        this.activo = activo;
    }

    public Cliente() {
    }
}
   


   
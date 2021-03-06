package dam.gestionhotelera.modelo.Pojos;
// Generated 03-dic-2017 19:50:02 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Habitacion generated by hbm2java
 */
public class Habitacion  implements java.io.Serializable {


     private Integer idHabitacion;
     private int numero;
     private String estatus;
     private String vista;
     private Boolean ocupada;
     private Boolean bloqueada;
     private byte[] foto;
     private Boolean camaExtra;
     private Integer ocupantes;
     private Boolean safe;
     private Set clientes = new HashSet(0);

    public Habitacion() {
    }

	
    public Habitacion(int numero) {
        this.numero = numero;
    }
    public Habitacion(int numero, String estatus, String vista, Boolean ocupada, Boolean bloqueada, byte[] foto, Boolean camaExtra, Integer ocupantes, Boolean safe, Set clientes) {
       this.numero = numero;
       this.estatus = estatus;
       this.vista = vista;
       this.ocupada = ocupada;
       this.bloqueada = bloqueada;
       this.foto = foto;
       this.camaExtra = camaExtra;
       this.ocupantes = ocupantes;
       this.safe = safe;
       this.clientes = clientes;
    }
   
    public Integer getIdHabitacion() {
        return this.idHabitacion;
    }
    
    public void setIdHabitacion(Integer idHabitacion) {
        this.idHabitacion = idHabitacion;
    }
    public int getNumero() {
        return this.numero;
    }
    
    public void setNumero(int numero) {
        this.numero = numero;
    }
    public String getEstatus() {
        return this.estatus;
    }
    
    public void setEstatus(String estatus) {
        this.estatus = estatus;
    }
    public String getVista() {
        return this.vista;
    }
    
    public void setVista(String vista) {
        this.vista = vista;
    }
    public Boolean getOcupada() {
        return this.ocupada;
    }
    
    public void setOcupada(Boolean ocupada) {
        this.ocupada = ocupada;
    }
    public Boolean getBloqueada() {
        return this.bloqueada;
    }
    
    public void setBloqueada(Boolean bloqueada) {
        this.bloqueada = bloqueada;
    }
    public byte[] getFoto() {
        return this.foto;
    }
    
    public void setFoto(byte[] foto) {
        this.foto = foto;
    }
    public Boolean getCamaExtra() {
        return this.camaExtra;
    }
    
    public void setCamaExtra(Boolean camaExtra) {
        this.camaExtra = camaExtra;
    }
    public Integer getOcupantes() {
        return this.ocupantes;
    }
    
    public void setOcupantes(Integer ocupantes) {
        this.ocupantes = ocupantes;
    }
    public Boolean getSafe() {
        return this.safe;
    }
    
    public void setSafe(Boolean safe) {
        this.safe = safe;
    }
    public Set getClientes() {
        return this.clientes;
    }
    
    public void setClientes(Set clientes) {
        this.clientes = clientes;
    }




}



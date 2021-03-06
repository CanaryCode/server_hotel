package dam.gestionhotelera.modelo.Pojos;
// Generated 03-dic-2017 19:50:02 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Mesa generated by hbm2java
 */
public class Mesa  implements java.io.Serializable {


     private Integer idMesa;
     private int numero;
     private String identificacion;
     private String vista;
     private Boolean disponible;
     private String turno;
     private Set clientes = new HashSet(0);

    public Mesa() {
    }

	
    public Mesa(int numero, String identificacion) {
        this.numero = numero;
        this.identificacion = identificacion;
    }
    public Mesa(int numero, String identificacion, String vista, Boolean disponible, String turno, Set clientes) {
       this.numero = numero;
       this.identificacion = identificacion;
       this.vista = vista;
       this.disponible = disponible;
       this.turno = turno;
       this.clientes = clientes;
    }
   
    public Integer getIdMesa() {
        return this.idMesa;
    }
    
    public void setIdMesa(Integer idMesa) {
        this.idMesa = idMesa;
    }
    public int getNumero() {
        return this.numero;
    }
    
    public void setNumero(int numero) {
        this.numero = numero;
    }
    public String getIdentificacion() {
        return this.identificacion;
    }
    
    public void setIdentificacion(String identificacion) {
        this.identificacion = identificacion;
    }
    public String getVista() {
        return this.vista;
    }
    
    public void setVista(String vista) {
        this.vista = vista;
    }
    public Boolean getDisponible() {
        return this.disponible;
    }
    
    public void setDisponible(Boolean disponible) {
        this.disponible = disponible;
    }
    public String getTurno() {
        return this.turno;
    }
    
    public void setTurno(String turno) {
        this.turno = turno;
    }
    public Set getClientes() {
        return this.clientes;
    }
    
    public void setClientes(Set clientes) {
        this.clientes = clientes;
    }




}



package dam.gestionhotelera.modelo.Pojos;
// Generated 03-dic-2017 19:50:02 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Parte generated by hbm2java
 */
public class Parte  implements java.io.Serializable {


     private Integer idparte;
     private Empleado empleadoByEmpleadoIdEmpleadoCierra;
     private Empleado empleadoByEmpleadoIdEmpleadoAbre;
     private String comentario;
     private String concepto;
     private String categoria;
     private String grado;
     private Set parteTieneEmpresas = new HashSet(0);
     private Set empleadoHasPartes = new HashSet(0);
     private Set parteTieneDepartamentos = new HashSet(0);
     private Set parteTieneClientes = new HashSet(0);
     private Set parteTieneOfertas = new HashSet(0);
     private Set parteTieneProveedoreses = new HashSet(0);
     private Set parteTieneContratos = new HashSet(0);
     private Set parteTieneReservas = new HashSet(0);

    public Parte() {
    }

	
    public Parte(Empleado empleadoByEmpleadoIdEmpleadoAbre) {
        this.empleadoByEmpleadoIdEmpleadoAbre = empleadoByEmpleadoIdEmpleadoAbre;
    }
    public Parte(Empleado empleadoByEmpleadoIdEmpleadoCierra, Empleado empleadoByEmpleadoIdEmpleadoAbre, String comentario, String concepto, String categoria, String grado, Set parteTieneEmpresas, Set empleadoHasPartes, Set parteTieneDepartamentos, Set parteTieneClientes, Set parteTieneOfertas, Set parteTieneProveedoreses, Set parteTieneContratos, Set parteTieneReservas) {
       this.empleadoByEmpleadoIdEmpleadoCierra = empleadoByEmpleadoIdEmpleadoCierra;
       this.empleadoByEmpleadoIdEmpleadoAbre = empleadoByEmpleadoIdEmpleadoAbre;
       this.comentario = comentario;
       this.concepto = concepto;
       this.categoria = categoria;
       this.grado = grado;
       this.parteTieneEmpresas = parteTieneEmpresas;
       this.empleadoHasPartes = empleadoHasPartes;
       this.parteTieneDepartamentos = parteTieneDepartamentos;
       this.parteTieneClientes = parteTieneClientes;
       this.parteTieneOfertas = parteTieneOfertas;
       this.parteTieneProveedoreses = parteTieneProveedoreses;
       this.parteTieneContratos = parteTieneContratos;
       this.parteTieneReservas = parteTieneReservas;
    }
   
    public Integer getIdparte() {
        return this.idparte;
    }
    
    public void setIdparte(Integer idparte) {
        this.idparte = idparte;
    }
    public Empleado getEmpleadoByEmpleadoIdEmpleadoCierra() {
        return this.empleadoByEmpleadoIdEmpleadoCierra;
    }
    
    public void setEmpleadoByEmpleadoIdEmpleadoCierra(Empleado empleadoByEmpleadoIdEmpleadoCierra) {
        this.empleadoByEmpleadoIdEmpleadoCierra = empleadoByEmpleadoIdEmpleadoCierra;
    }
    public Empleado getEmpleadoByEmpleadoIdEmpleadoAbre() {
        return this.empleadoByEmpleadoIdEmpleadoAbre;
    }
    
    public void setEmpleadoByEmpleadoIdEmpleadoAbre(Empleado empleadoByEmpleadoIdEmpleadoAbre) {
        this.empleadoByEmpleadoIdEmpleadoAbre = empleadoByEmpleadoIdEmpleadoAbre;
    }
    public String getComentario() {
        return this.comentario;
    }
    
    public void setComentario(String comentario) {
        this.comentario = comentario;
    }
    public String getConcepto() {
        return this.concepto;
    }
    
    public void setConcepto(String concepto) {
        this.concepto = concepto;
    }
    public String getCategoria() {
        return this.categoria;
    }
    
    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
    public String getGrado() {
        return this.grado;
    }
    
    public void setGrado(String grado) {
        this.grado = grado;
    }
    public Set getParteTieneEmpresas() {
        return this.parteTieneEmpresas;
    }
    
    public void setParteTieneEmpresas(Set parteTieneEmpresas) {
        this.parteTieneEmpresas = parteTieneEmpresas;
    }
    public Set getEmpleadoHasPartes() {
        return this.empleadoHasPartes;
    }
    
    public void setEmpleadoHasPartes(Set empleadoHasPartes) {
        this.empleadoHasPartes = empleadoHasPartes;
    }
    public Set getParteTieneDepartamentos() {
        return this.parteTieneDepartamentos;
    }
    
    public void setParteTieneDepartamentos(Set parteTieneDepartamentos) {
        this.parteTieneDepartamentos = parteTieneDepartamentos;
    }
    public Set getParteTieneClientes() {
        return this.parteTieneClientes;
    }
    
    public void setParteTieneClientes(Set parteTieneClientes) {
        this.parteTieneClientes = parteTieneClientes;
    }
    public Set getParteTieneOfertas() {
        return this.parteTieneOfertas;
    }
    
    public void setParteTieneOfertas(Set parteTieneOfertas) {
        this.parteTieneOfertas = parteTieneOfertas;
    }
    public Set getParteTieneProveedoreses() {
        return this.parteTieneProveedoreses;
    }
    
    public void setParteTieneProveedoreses(Set parteTieneProveedoreses) {
        this.parteTieneProveedoreses = parteTieneProveedoreses;
    }
    public Set getParteTieneContratos() {
        return this.parteTieneContratos;
    }
    
    public void setParteTieneContratos(Set parteTieneContratos) {
        this.parteTieneContratos = parteTieneContratos;
    }
    public Set getParteTieneReservas() {
        return this.parteTieneReservas;
    }
    
    public void setParteTieneReservas(Set parteTieneReservas) {
        this.parteTieneReservas = parteTieneReservas;
    }




}



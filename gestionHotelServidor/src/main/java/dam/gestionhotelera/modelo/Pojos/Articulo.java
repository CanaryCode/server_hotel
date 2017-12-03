package dam.gestionhotelera.modelo.Pojos;
// Generated 03-dic-2017 19:50:02 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Articulo generated by hbm2java
 */
public class Articulo  implements java.io.Serializable {


     private Integer idArticulo;
     private Departamento departamento;
     private Proveedores proveedores;
     private String nombre;
     private String concepto;
     private Double precio;
     private byte[] foto;
     private String categoria;
     private String codigo;
     private Set ofertas = new HashSet(0);
     private Set facturaTieneArticulos = new HashSet(0);

    public Articulo() {
    }

	
    public Articulo(Departamento departamento) {
        this.departamento = departamento;
    }
    public Articulo(Departamento departamento, Proveedores proveedores, String nombre, String concepto, Double precio, byte[] foto, String categoria, String codigo, Set ofertas, Set facturaTieneArticulos) {
       this.departamento = departamento;
       this.proveedores = proveedores;
       this.nombre = nombre;
       this.concepto = concepto;
       this.precio = precio;
       this.foto = foto;
       this.categoria = categoria;
       this.codigo = codigo;
       this.ofertas = ofertas;
       this.facturaTieneArticulos = facturaTieneArticulos;
    }
   
    public Integer getIdArticulo() {
        return this.idArticulo;
    }
    
    public void setIdArticulo(Integer idArticulo) {
        this.idArticulo = idArticulo;
    }
    public Departamento getDepartamento() {
        return this.departamento;
    }
    
    public void setDepartamento(Departamento departamento) {
        this.departamento = departamento;
    }
    public Proveedores getProveedores() {
        return this.proveedores;
    }
    
    public void setProveedores(Proveedores proveedores) {
        this.proveedores = proveedores;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getConcepto() {
        return this.concepto;
    }
    
    public void setConcepto(String concepto) {
        this.concepto = concepto;
    }
    public Double getPrecio() {
        return this.precio;
    }
    
    public void setPrecio(Double precio) {
        this.precio = precio;
    }
    public byte[] getFoto() {
        return this.foto;
    }
    
    public void setFoto(byte[] foto) {
        this.foto = foto;
    }
    public String getCategoria() {
        return this.categoria;
    }
    
    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
    public String getCodigo() {
        return this.codigo;
    }
    
    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }
    public Set getOfertas() {
        return this.ofertas;
    }
    
    public void setOfertas(Set ofertas) {
        this.ofertas = ofertas;
    }
    public Set getFacturaTieneArticulos() {
        return this.facturaTieneArticulos;
    }
    
    public void setFacturaTieneArticulos(Set facturaTieneArticulos) {
        this.facturaTieneArticulos = facturaTieneArticulos;
    }




}


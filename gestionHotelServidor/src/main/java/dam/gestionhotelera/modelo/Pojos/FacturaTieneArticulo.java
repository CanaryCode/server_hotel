package dam.gestionhotelera.modelo.Pojos;
// Generated 03-dic-2017 19:50:02 by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * FacturaTieneArticulo generated by hbm2java
 */
public class FacturaTieneArticulo  implements java.io.Serializable {


     private Integer idFacturaTieneArticulocol;
     private Articulo articulo;
     private Factura factura;
     private Date fecha;
     private Double precio;

    public FacturaTieneArticulo() {
    }

	
    public FacturaTieneArticulo(Articulo articulo, Factura factura) {
        this.articulo = articulo;
        this.factura = factura;
    }
    public FacturaTieneArticulo(Articulo articulo, Factura factura, Date fecha, Double precio) {
       this.articulo = articulo;
       this.factura = factura;
       this.fecha = fecha;
       this.precio = precio;
    }
   
    public Integer getIdFacturaTieneArticulocol() {
        return this.idFacturaTieneArticulocol;
    }
    
    public void setIdFacturaTieneArticulocol(Integer idFacturaTieneArticulocol) {
        this.idFacturaTieneArticulocol = idFacturaTieneArticulocol;
    }
    public Articulo getArticulo() {
        return this.articulo;
    }
    
    public void setArticulo(Articulo articulo) {
        this.articulo = articulo;
    }
    public Factura getFactura() {
        return this.factura;
    }
    
    public void setFactura(Factura factura) {
        this.factura = factura;
    }
    public Date getFecha() {
        return this.fecha;
    }
    
    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
    public Double getPrecio() {
        return this.precio;
    }
    
    public void setPrecio(Double precio) {
        this.precio = precio;
    }




}



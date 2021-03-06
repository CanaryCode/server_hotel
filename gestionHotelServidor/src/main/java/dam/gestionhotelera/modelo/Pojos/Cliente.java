package dam.gestionhotelera.modelo.Pojos;
// Generated 03-dic-2017 19:50:02 by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Cliente generated by hbm2java
 */
public class Cliente  implements java.io.Serializable {


     private Integer idCliente;
     private Habitacion habitacion;
     private Mesa mesa;
     private Reserva reserva;
     private Date fechaExpedicionPasaporte;
     private Date fechaVencimientoPasaporte;
     private String categoria;
     private Double puntos;
     private String turno;
     private String pension;
     private String estatus;
     private String codigoPostal;
     private String calle;
     private Integer numero;
     private String pais;
     private String ciudad;
     private String poblacion;
     private String via;
     private String escalera;
     private String bloque;
     private String provincia;
     private String nombre;
     private String primerApellido;
     private String segundoApellido;
     private Date fechaNacimiento;
     private String dni;
     private String sexo;
     private String correoElectronico;
     private String telefonoMovil;
     private String telefonoFijo;
     private Boolean discapacitado;
     private String categoriaSegunAgencia;
     private Set facturas = new HashSet(0);
     private Set parteTieneClientes = new HashSet(0);

    public Cliente() {
    }

	
    public Cliente(String nombre, String dni) {
        this.nombre = nombre;
        this.dni = dni;
    }
    public Cliente(Habitacion habitacion, Mesa mesa, Reserva reserva, Date fechaExpedicionPasaporte, Date fechaVencimientoPasaporte, String categoria, Double puntos, String turno, String pension, String estatus, String codigoPostal, String calle, Integer numero, String pais, String ciudad, String poblacion, String via, String escalera, String bloque, String provincia, String nombre, String primerApellido, String segundoApellido, Date fechaNacimiento, String dni, String sexo, String correoElectronico, String telefonoMovil, String telefonoFijo, Boolean discapacitado, String categoriaSegunAgencia, Set facturas, Set parteTieneClientes) {
       this.habitacion = habitacion;
       this.mesa = mesa;
       this.reserva = reserva;
       this.fechaExpedicionPasaporte = fechaExpedicionPasaporte;
       this.fechaVencimientoPasaporte = fechaVencimientoPasaporte;
       this.categoria = categoria;
       this.puntos = puntos;
       this.turno = turno;
       this.pension = pension;
       this.estatus = estatus;
       this.codigoPostal = codigoPostal;
       this.calle = calle;
       this.numero = numero;
       this.pais = pais;
       this.ciudad = ciudad;
       this.poblacion = poblacion;
       this.via = via;
       this.escalera = escalera;
       this.bloque = bloque;
       this.provincia = provincia;
       this.nombre = nombre;
       this.primerApellido = primerApellido;
       this.segundoApellido = segundoApellido;
       this.fechaNacimiento = fechaNacimiento;
       this.dni = dni;
       this.sexo = sexo;
       this.correoElectronico = correoElectronico;
       this.telefonoMovil = telefonoMovil;
       this.telefonoFijo = telefonoFijo;
       this.discapacitado = discapacitado;
       this.categoriaSegunAgencia = categoriaSegunAgencia;
       this.facturas = facturas;
       this.parteTieneClientes = parteTieneClientes;
    }
   
    public Integer getIdCliente() {
        return this.idCliente;
    }
    
    public void setIdCliente(Integer idCliente) {
        this.idCliente = idCliente;
    }
    public Habitacion getHabitacion() {
        return this.habitacion;
    }
    
    public void setHabitacion(Habitacion habitacion) {
        this.habitacion = habitacion;
    }
    public Mesa getMesa() {
        return this.mesa;
    }
    
    public void setMesa(Mesa mesa) {
        this.mesa = mesa;
    }
    public Reserva getReserva() {
        return this.reserva;
    }
    
    public void setReserva(Reserva reserva) {
        this.reserva = reserva;
    }
    public Date getFechaExpedicionPasaporte() {
        return this.fechaExpedicionPasaporte;
    }
    
    public void setFechaExpedicionPasaporte(Date fechaExpedicionPasaporte) {
        this.fechaExpedicionPasaporte = fechaExpedicionPasaporte;
    }
    public Date getFechaVencimientoPasaporte() {
        return this.fechaVencimientoPasaporte;
    }
    
    public void setFechaVencimientoPasaporte(Date fechaVencimientoPasaporte) {
        this.fechaVencimientoPasaporte = fechaVencimientoPasaporte;
    }
    public String getCategoria() {
        return this.categoria;
    }
    
    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
    public Double getPuntos() {
        return this.puntos;
    }
    
    public void setPuntos(Double puntos) {
        this.puntos = puntos;
    }
    public String getTurno() {
        return this.turno;
    }
    
    public void setTurno(String turno) {
        this.turno = turno;
    }
    public String getPension() {
        return this.pension;
    }
    
    public void setPension(String pension) {
        this.pension = pension;
    }
    public String getEstatus() {
        return this.estatus;
    }
    
    public void setEstatus(String estatus) {
        this.estatus = estatus;
    }
    public String getCodigoPostal() {
        return this.codigoPostal;
    }
    
    public void setCodigoPostal(String codigoPostal) {
        this.codigoPostal = codigoPostal;
    }
    public String getCalle() {
        return this.calle;
    }
    
    public void setCalle(String calle) {
        this.calle = calle;
    }
    public Integer getNumero() {
        return this.numero;
    }
    
    public void setNumero(Integer numero) {
        this.numero = numero;
    }
    public String getPais() {
        return this.pais;
    }
    
    public void setPais(String pais) {
        this.pais = pais;
    }
    public String getCiudad() {
        return this.ciudad;
    }
    
    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }
    public String getPoblacion() {
        return this.poblacion;
    }
    
    public void setPoblacion(String poblacion) {
        this.poblacion = poblacion;
    }
    public String getVia() {
        return this.via;
    }
    
    public void setVia(String via) {
        this.via = via;
    }
    public String getEscalera() {
        return this.escalera;
    }
    
    public void setEscalera(String escalera) {
        this.escalera = escalera;
    }
    public String getBloque() {
        return this.bloque;
    }
    
    public void setBloque(String bloque) {
        this.bloque = bloque;
    }
    public String getProvincia() {
        return this.provincia;
    }
    
    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getPrimerApellido() {
        return this.primerApellido;
    }
    
    public void setPrimerApellido(String primerApellido) {
        this.primerApellido = primerApellido;
    }
    public String getSegundoApellido() {
        return this.segundoApellido;
    }
    
    public void setSegundoApellido(String segundoApellido) {
        this.segundoApellido = segundoApellido;
    }
    public Date getFechaNacimiento() {
        return this.fechaNacimiento;
    }
    
    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }
    public String getDni() {
        return this.dni;
    }
    
    public void setDni(String dni) {
        this.dni = dni;
    }
    public String getSexo() {
        return this.sexo;
    }
    
    public void setSexo(String sexo) {
        this.sexo = sexo;
    }
    public String getCorreoElectronico() {
        return this.correoElectronico;
    }
    
    public void setCorreoElectronico(String correoElectronico) {
        this.correoElectronico = correoElectronico;
    }
    public String getTelefonoMovil() {
        return this.telefonoMovil;
    }
    
    public void setTelefonoMovil(String telefonoMovil) {
        this.telefonoMovil = telefonoMovil;
    }
    public String getTelefonoFijo() {
        return this.telefonoFijo;
    }
    
    public void setTelefonoFijo(String telefonoFijo) {
        this.telefonoFijo = telefonoFijo;
    }
    public Boolean getDiscapacitado() {
        return this.discapacitado;
    }
    
    public void setDiscapacitado(Boolean discapacitado) {
        this.discapacitado = discapacitado;
    }
    public String getCategoriaSegunAgencia() {
        return this.categoriaSegunAgencia;
    }
    
    public void setCategoriaSegunAgencia(String categoriaSegunAgencia) {
        this.categoriaSegunAgencia = categoriaSegunAgencia;
    }
    public Set getFacturas() {
        return this.facturas;
    }
    
    public void setFacturas(Set facturas) {
        this.facturas = facturas;
    }
    public Set getParteTieneClientes() {
        return this.parteTieneClientes;
    }
    
    public void setParteTieneClientes(Set parteTieneClientes) {
        this.parteTieneClientes = parteTieneClientes;
    }




}



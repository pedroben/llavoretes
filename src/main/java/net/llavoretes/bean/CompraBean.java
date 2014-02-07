package net.llavoretes.bean;

import java.util.Date;

public class CompraBean {

    private Integer id = 0;
    private Integer id_cliente = 0;
    private Integer id_producto = 0;
    private Integer cantidad = 0;
    private Date fecha = new Date();
    private Integer id_factura = 0;

    public CompraBean() {

    }

    public CompraBean(Integer intId) {
        this.id = intId;
    }

    public int getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(Integer id_cliente) {
        this.id_cliente = id_cliente;
    }

    public Integer getId_producto() {
        return id_producto;
    }

    public void setId_producto(Integer id_producto) {
        this.id_producto = id_producto;
    }

    public Integer getCantidad() {
        return cantidad;
    }

    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Integer getId_factura() {
        return id_factura;
    }

    public void setId_factura(Integer id_factura) {
        this.id_factura = id_factura;
    }

}

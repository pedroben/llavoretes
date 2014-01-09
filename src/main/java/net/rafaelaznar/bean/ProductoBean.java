package net.rafaelaznar.bean;

public class ProductoBean {

    private Integer id = 0;
    private String codigo = "";
    private String descripcion = "";
    private Double precio = 0.0;
    private Integer id_tipoproducto = 0;

    public ProductoBean() {        
    }

    public ProductoBean(Integer id) {
        this.id = id;      
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public Integer getId_tipoProducto() {
        return id_tipoproducto;
    }

    public void setId_tipoProducto(Integer id_tipoproducto) {
        this.id_tipoproducto = id_tipoproducto;
    }

}

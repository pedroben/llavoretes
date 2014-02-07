
package net.llavoretes.bean;

/**
 *
 * @author rafa
 */
public class TipoproductoBean {

    private Integer id = 0;
    private String descripcion = "";

    public TipoproductoBean() {

    }

    public TipoproductoBean(Integer id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}

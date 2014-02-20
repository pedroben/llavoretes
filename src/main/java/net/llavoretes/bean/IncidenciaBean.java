/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.llavoretes.bean;

/**
 *
 * @author llavoretes
 */
public class IncidenciaBean {
    
    private Integer id = 0;
    private String fechahora = "";
    private String descripcion = "";
    private Integer id_alumno = 0;

    /**
     * @return the id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return the fechahora
     */
    public String getFechahora() {
        return fechahora;
    }

    /**
     * @param fechahora the fechahora to set
     */
    public void setFechahora(String fechahora) {
        this.fechahora = fechahora;
    }

    /**
     * @return the descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * @param descripcion the descripcion to set
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    /**
     * @return the id_alumno
     */
    public Integer getId_alumno() {
        return id_alumno;
    }

    /**
     * @param id_alumno the id_alumno to set
     */
    public void setId_alumno(Integer id_alumno) {
        this.id_alumno = id_alumno;
    }

    
    
    
    
}

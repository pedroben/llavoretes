/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.llavoretes.bean;

import javax.ejb.Stateless;

/**
 *
 * @author al037184
 */
@Stateless
public class PagoBean {

    private Integer id = 0;
    private Integer id_curso = 0;
    private Integer id_alumno = 0;
    private String mes = "";
    private Boolean pagado = true;
    private Double cantidad = 0.0;

    public PagoBean() {
    }

    public PagoBean(Integer id) {
        this.setId(id);
    }

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
     * @return the id_curso
     */
    public Integer getId_curso() {
        return id_curso;
    }

    /**
     * @param id_curso the id_curso to set
     */
    public void setId_curso(Integer id_curso) {
        this.id_curso = id_curso;
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

   
    
    
    /**
     * @return the pagado
     */
    public Boolean getPagado() {
        return pagado;
    }

    /**
     * @param pagado the pagado to set
     */
    public void setPagado(Boolean pagado) {
        this.pagado = pagado;
    }

    /**
     * @return the cantidad
     */
    public Double getCantidad() {
        return cantidad;
    }

    /**
     * @param cantidad the cantidad to set
     */
    public void setCantidad(Double cantidad) {
        this.cantidad = cantidad;
    }

    /**
     * @return the mes
     */
    public String getMes() {
        return mes;
    }

    /**
     * @param mes the mes to set
     */
    public void setMes(String mes) {
        this.mes = mes;
    }
}

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
public class GrupoBean {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    private Integer id = 0;
    private String nombreaula = "";
    private String franjaedad = "";
    private Integer id_profesor = 0;
    
     public GrupoBean() {
    }

    public GrupoBean(Integer id) {
        this.id = id;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return the nombreaula
     */
    public String getNombreaula() {
        return nombreaula;
    }

    /**
     * @param dni the nombreaula to set
     */
    public void setNombreaula(String nombreaula) {
        this.nombreaula = nombreaula;
    }

    /**
     * @return the franjaedad
     */
    public String getFranjaedad() {
        return franjaedad;
    }

    /**
     * @param nombre the franjaedad to set
     */
    public void setFranjaedad(String franjaedad) {
        this.franjaedad = franjaedad;
    }

 /**
     * @return the id_profesor
     */
    public int getId_profesor() {
        return id_profesor;
    }

    /**
     * @param id_profesor the id_grupo to set
     */
    public void setId_profesor(Integer id_profesor) {
        this.id_profesor = id_profesor;
    }

}

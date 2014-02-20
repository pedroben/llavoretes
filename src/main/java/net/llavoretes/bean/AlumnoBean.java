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
public class AlumnoBean {

    private Integer id = 0;
    private String nombre = "";
    private String ape1 = "";
    private String ape2 = "";
    private String nif = "";
    private Integer id_tutor = 0;
    private Integer id_grupo = 0;
    private String horario = "";
    private String medicacion = "";
    private String otros = "";

    public AlumnoBean() {
    }

    public AlumnoBean(Integer id) {
        this.id = id;
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
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the ape1
     */
    public String getApe1() {
        return ape1;
    }

    /**
     * @param ape1 the ape1 to set
     */
    public void setApe1(String ape1) {
        this.ape1 = ape1;
    }

    /**
     * @return the ape2
     */
    public String getApe2() {
        return ape2;
    }

    /**
     * @param ape2 the ape2 to set
     */
    public void setApe2(String ape2) {
        this.ape2 = ape2;
    }

    /**
     * @return the nif
     */
    public String getNif() {
        return nif;
    }

    /**
     * @param nif the nif to set
     */
    public void setNif(String nif) {
        this.nif = nif;
    }

    /**
     * @return the id_tutor
     */
    public Integer getId_tutor() {
        return id_tutor;
    }

    /**
     * @param id_tutor the id_tutor to set
     */
    public void setId_tutor(Integer id_tutor) {
        this.id_tutor = id_tutor;
    }

    /**
     * @return the id_grupo
     */
    public Integer getId_grupo() {
        return id_grupo;
    }

    /**
     * @param id_grupo the id_grupo to set
     */
    public void setId_grupo(Integer id_grupo) {
        this.id_grupo = id_grupo;
    }

    /**
     * @return the horario
     */
    public String getHorario() {
        return horario;
    }

    /**
     * @param horario the horario to set
     */
    public void setHorario(String horario) {
        this.horario = horario;
    }

    /**
     * @return the medicacion
     */
    public String getMedicacion() {
        return medicacion;
    }

    /**
     * @param medicacion the medicacion to set
     */
    public void setMedicacion(String medicacion) {
        this.medicacion = medicacion;
    }

    /**
     * @return the otros
     */
    public String getOtros() {
        return otros;
    }

    /**
     * @param otros the otros to set
     */
    public void setOtros(String otros) {
        this.otros = otros;
    }

}

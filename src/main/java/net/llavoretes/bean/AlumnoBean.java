/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.llavoretes.bean;

/**
 *
 * @author llavoretes
 */
public class AlumnoBean {
    
    
    private Integer id=0;
    private String nombre="";
    private String ape1="";
    private String ape2="";
    private String nif="";
    private String email="";
    private Integer id_primertutor=0;
    private Integer id_segundotutor=0;
    private Integer id_grupo=0;
    private String horario="";
    private String medicacion="";
    private String otros="";
    
    
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
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the id_primertutor
     */
    public Integer getId_primertutor() {
        return id_primertutor;
    }

    /**
     * @param id_primertutor the id_primertutor to set
     */
    public void setId_primertutor(Integer id_primertutor) {
        this.id_primertutor = id_primertutor;
    }

    /**
     * @return the id_segundotutor
     */
    public Integer getId_segundotutor() {
        return id_segundotutor;
    }

    /**
     * @param id_segundotutor the id_segundotutor to set
     */
    public void setId_segundotutor(Integer id_segundotutor) {
        this.id_segundotutor = id_segundotutor;
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

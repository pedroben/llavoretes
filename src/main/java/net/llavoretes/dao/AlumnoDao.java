/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.llavoretes.dao;


import net.llavoretes.bean.AlumnoBean;
import net.llavoretes.helper.Conexion;

/**
 *
 * @author llavoretes
 */
public class AlumnoDao extends GenericDaoImplementation<AlumnoBean>{
 
    
    public AlumnoDao(Conexion.Tipo_conexion tipoConexion) throws Exception {
        super(tipoConexion,"alumno");
    }
    
    
}

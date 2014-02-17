/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.llavoretes.dao;


import net.llavoretes.bean.TutorBean;
import net.llavoretes.helper.Conexion;


/**
 *
 * @author llavoretes
 */
public class TutorDao extends GenericDaoImplementation<TutorBean>{
    
     
    public TutorDao(Conexion.Tipo_conexion tipoConexion) throws Exception {
        super(tipoConexion,"tutor");
    }
    
    
}

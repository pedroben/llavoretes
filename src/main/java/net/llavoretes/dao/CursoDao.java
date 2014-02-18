/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.llavoretes.dao;


import net.llavoretes.bean.CursoBean;
import net.llavoretes.helper.Conexion;


/**
 *
 * @author llavoretes
 */
public class CursoDao extends GenericDaoImplementation<CursoBean>{
    
    
    public CursoDao(Conexion.Tipo_conexion tipoConexion) throws Exception {
        super(tipoConexion,"curso");
    }
    
    
    
}

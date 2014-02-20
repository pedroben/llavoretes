/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.llavoretes.dao;

/**
 *
 * @author mati
 */

import net.llavoretes.bean.IncidenciaBean;
import net.llavoretes.helper.Conexion;


public class IncidenciaDao extends GenericDaoImplementation<IncidenciaBean>{
    
    
    public IncidenciaDao(Conexion.Tipo_conexion tipoConexion) throws Exception {
        super(tipoConexion,"incidencia");
    }
    
    
    
    
}

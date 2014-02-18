/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.llavoretes.dao;

import net.llavoretes.bean.PagoBean;
import net.llavoretes.helper.Conexion;

/**
 *
 * @author llavoretes
 */
public class PagoDao extends GenericDaoImplementation<PagoBean>{
    
    public PagoDao(Conexion.Tipo_conexion tipoConexion) throws Exception {
        super(tipoConexion,"pago");
    }
  
    
}

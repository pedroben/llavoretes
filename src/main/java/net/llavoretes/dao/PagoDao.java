/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package net.llavoretes.dao;

import net.llavoretes.bean.PagoBean;
import net.llavoretes.helper.Conexion;

/**
 *
 * @author al037184
 */
public class PagoDao  extends GenericDaoImplementation<PagoBean>{
    
     
    public PagoDao(Conexion.Tipo_conexion tipoConexion) throws Exception {
        super(tipoConexion,"pago");
    }
    
    
}

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.llavoretes.dao;

import net.llavoretes.bean.ClienteBean;
import net.llavoretes.helper.Conexion;

/**
 *
 * @author rafa
 */
public class ClienteDao extends GenericDaoImplementation<ClienteBean> {
  
    public ClienteDao(Conexion.Tipo_conexion tipoConexion) throws Exception {
        super(tipoConexion,"cliente");
    }
    
}

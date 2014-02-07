/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.llavoretes.dao;

import net.llavoretes.bean.ClienteBean;
import net.llavoretes.bean.TipoproductoBean;
import net.llavoretes.helper.Conexion;

/**
 *
 * @author rafa
 */
public class TipoproductoDao extends GenericDaoImplementation<TipoproductoBean> {
  
    public TipoproductoDao(Conexion.Tipo_conexion tipoConexion) throws Exception {
        super(tipoConexion,"tipoproducto");
    }
    
}

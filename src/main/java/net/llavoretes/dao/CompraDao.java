/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.llavoretes.dao;

import net.llavoretes.bean.CompraBean;
import net.llavoretes.helper.Conexion;

/**
 *
 * @author rafa
 */
public class CompraDao extends GenericDaoImplementation<CompraBean> {
  
    public CompraDao(Conexion.Tipo_conexion tipoConexion) throws Exception {
        super(tipoConexion,"compra");
    }
    
}
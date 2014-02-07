/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.llavoretes.dao;


import net.llavoretes.bean.ProductoBean;
import net.llavoretes.helper.Conexion;

/**
 *
 * @author rafa
 */

public class ProductoDao extends GenericDaoImplementation<ProductoBean> {
  
    public ProductoDao(Conexion.Tipo_conexion tipoConexion) throws Exception {
        super(tipoConexion,"producto");
    }
    
}
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.rafaelaznar.dao;


import net.rafaelaznar.bean.ProductoBean;
import net.rafaelaznar.helper.Conexion;

/**
 *
 * @author rafa
 */

public class ProductoDao extends GenericDaoImplementation<ProductoBean> {
  
    public ProductoDao(Conexion.Tipo_conexion tipoConexion) throws Exception {
        super(tipoConexion,"producto");
    }
    
}
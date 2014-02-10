/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package net.llavoretes.dao;


import net.llavoretes.bean.ProfesorBean;
import net.llavoretes.bean.UsuarioBean;
import net.llavoretes.helper.Conexion;

/**
 *
 * @author Pedro Benito
 */
public class ProfesorDao extends GenericDaoImplementation<ProfesorBean>{
    
    public ProfesorDao(Conexion.Tipo_conexion tipo_conexion) throws Exception{
        super(tipo_conexion, "profesor");
    }
    
  
}
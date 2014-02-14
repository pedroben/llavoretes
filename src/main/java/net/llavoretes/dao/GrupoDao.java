/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package net.llavoretes.dao;

import net.llavoretes.bean.GrupoBean;
import net.llavoretes.bean.ProfesorBean;
import net.llavoretes.helper.Conexion;

/**
 *
 * @author al037184
 */
public class GrupoDao extends GenericDaoImplementation<GrupoBean>{
    
    public GrupoDao(Conexion.Tipo_conexion tipo_conexion) throws Exception{
        super(tipo_conexion, "grupo");
    }
    
   public GrupoBean getFromId_profesor(ProfesorBean oProfesorBean) throws Exception {
        GrupoBean oGrupoBean = new GrupoBean();
        if (oProfesorBean.getId() > 0) {
            try {
                oMysql.conexion(enumTipoConexion);
                String id_profesor = Integer.toString(oGrupoBean.getId());
                Integer id_user = Integer.parseInt(oMysql.getId("grupo", "id_profesor", id_profesor));
                oGrupoBean.setId(id_user);
            } catch (Exception e) {
                throw new Exception("ProfesorDao.getProfesor: Error: " + e.getMessage());
            } finally {
                oMysql.desconexion();
            }
        } else {
            oGrupoBean.setId(0);
        }
        return oGrupoBean;
    }
}
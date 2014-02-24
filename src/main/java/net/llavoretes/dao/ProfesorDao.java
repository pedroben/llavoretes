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
 * @author Pedro Benito
 */
public class ProfesorDao extends GenericDaoImplementation<ProfesorBean>{
    
    public ProfesorDao(Conexion.Tipo_conexion tipo_conexion) throws Exception{
        super(tipo_conexion, "profesor");
    }
    
   public ProfesorBean getFromId_grupo(GrupoBean oGrupoBean) throws Exception {
        ProfesorBean oProfesorBean = new ProfesorBean();
        if (oGrupoBean.getId() > 0) {
            try {
                oMysql.conexion(enumTipoConexion);
                String id_grupo = Integer.toString(oGrupoBean.getId());
//                Integer id_user = Integer.parseInt(oMysql.getId("profesor", "id_grupo", id_grupo));
//                oProfesorBean.setId(id_user);
            } catch (Exception e) {
                throw new Exception("ProfesorDao.getProfesor: Error: " + e.getMessage());
            } finally {
                oMysql.desconexion();
            }
        } else {
            oProfesorBean.setId(0);
        }
        return oProfesorBean;
    }
}
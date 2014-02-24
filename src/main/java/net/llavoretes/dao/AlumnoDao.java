/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package net.llavoretes.dao;

import net.llavoretes.bean.GrupoBean;
import net.llavoretes.bean.AlumnoBean;
import net.llavoretes.helper.Conexion;

/**
 *
 * @author al037184
 */
public class AlumnoDao extends GenericDaoImplementation<AlumnoBean>{
    
    public AlumnoDao(Conexion.Tipo_conexion tipo_conexion) throws Exception{
        super(tipo_conexion, "alumno");
    }
    
   public AlumnoBean getFromId_grupo(GrupoBean oGrupoBean) throws Exception {
        AlumnoBean oAlumnoBean = new AlumnoBean();
        if (oGrupoBean.getId() > 0) {
            try {
                oMysql.conexion(enumTipoConexion);
                String id_grupo = Integer.toString(oGrupoBean.getId());
//                Integer id_user = Integer.parseInt(oMysql.getId("alumno", "id_grupo", id_grupo));
//                oAlumnoBean.setId(id_user);
            } catch (Exception e) {
                throw new Exception("AlumnoDao.getAlumno: Error: " + e.getMessage());
            } finally {
                oMysql.desconexion();
            }
        } else {
            oAlumnoBean.setId(0);
        }
        return oAlumnoBean;
    }
}
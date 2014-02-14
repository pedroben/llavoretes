/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package net.llavoretes.operaciones;

import com.google.gson.Gson;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.llavoretes.bean.GrupoBean;
import net.llavoretes.dao.GrupoDao;
import net.llavoretes.helper.Conexion;
import net.llavoretes.helper.EncodingUtil;

/**
 *
 * @author al037184
 */
public class GrupoSave implements GenericOperation{
    
     @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        try {
            GrupoDao oGrupoDAO = new GrupoDao(Conexion.getConection());
            GrupoBean oGrupo = new GrupoBean();
            Gson gson = new Gson();
            String jason = request.getParameter("json");
            jason = EncodingUtil.decodeURIComponent(jason);
            oGrupo = gson.fromJson(jason, oGrupo.getClass());
            Map<String, String> data = new HashMap<>();
            if (oGrupo != null) {
                oGrupo = oGrupoDAO.set(oGrupo);
                data.put("status", "200");
                data.put("message", Integer.toString(oGrupo.getId()));
            } else {
                data.put("status", "error");
                data.put("message", "error");
            }
            String resultado = gson.toJson(data);
            return resultado;
        } catch (Exception e) {
            throw new ServletException("ClienteSaveJson: View Error: " + e.getMessage());
        }
    }
    
  
    
}

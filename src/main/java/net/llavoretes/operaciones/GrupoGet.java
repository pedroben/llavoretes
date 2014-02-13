/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package net.llavoretes.operaciones;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.llavoretes.bean.GrupoBean;
import net.llavoretes.dao.GrupoDao;
import net.llavoretes.helper.Conexion;

/**
 *
 * @author al037184
 */
public class GrupoGet implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String data;         
        try {            
            if (request.getParameter("id") == null) {
                data = "{\"error\":\"id is mandatory\"}";
            } else {
                GrupoDao oGrupoDAO = new GrupoDao(Conexion.getConection());
                GrupoBean oGrupo = new GrupoBean();
                oGrupo.setId(Integer.parseInt(request.getParameter("id")));
                oGrupoDAO.get(oGrupo);
                GsonBuilder gsonBuilder = new GsonBuilder();
                gsonBuilder.setDateFormat("dd/MM/yyyy");
                Gson gson = gsonBuilder.create();
                data = gson.toJson(oGrupo);
                
            }
            return data;
        } catch (Exception e) {
            throw new ServletException("GrupoGetJson: View Error: " + e.getMessage());
        }
    }
}
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.llavoretes.operaciones;

/**
 *
 * @author llavoretes
 */

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.llavoretes.bean.IncidenciaBean;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import net.llavoretes.dao.IncidenciaDao;
import net.llavoretes.helper.Conexion;




public class IncidenciaGet implements GenericOperation{
    
     @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String data;         
        try {            
            if (request.getParameter("id") == null) {
                data = "{\"error\":\"id is mandatory\"}";
            } else {
                IncidenciaDao oIncidenciaDAO = new IncidenciaDao(Conexion.getConection());
                IncidenciaBean oIncidencia = new IncidenciaBean();
                oIncidencia.setId(Integer.parseInt(request.getParameter("id")));
                oIncidenciaDAO.get(oIncidencia);
                GsonBuilder gsonBuilder = new GsonBuilder();
                gsonBuilder.setDateFormat("dd/MM/yyyy");
                Gson gson = gsonBuilder.create();
                data = gson.toJson(oIncidencia);
                
            }
            return data;
        } catch (Exception e) {
            throw new ServletException("IncidenciaGetJson: View Error: " + e.getMessage());
        }
    }
    
    
    
    
    
    
}

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
import net.llavoretes.bean.CursoBean;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import net.llavoretes.dao.CursoDao;
import net.llavoretes.helper.Conexion;


public class CursoGet  implements GenericOperation{
    
     @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String data;         
        try {            
            if (request.getParameter("id") == null) {
                data = "{\"error\":\"id is mandatory\"}";
            } else {
                CursoDao oCursoDAO = new CursoDao(Conexion.getConection());
                CursoBean oCurso = new CursoBean();
                oCurso.setId(Integer.parseInt(request.getParameter("id")));
                oCursoDAO.get(oCurso);
                GsonBuilder gsonBuilder = new GsonBuilder();
                gsonBuilder.setDateFormat("dd/MM/yyyy");
                Gson gson = gsonBuilder.create();
                data = gson.toJson(oCurso);
                
            }
            return data;
        } catch (Exception e) {
            throw new ServletException("CursoGetJson: View Error: " + e.getMessage());
        }
    }
    
    
    
    
    
    
    
}

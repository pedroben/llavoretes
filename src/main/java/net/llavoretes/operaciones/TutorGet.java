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
import net.llavoretes.bean.TutorBean;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import net.llavoretes.dao.TutorDao;
import net.llavoretes.helper.Conexion;



public class TutorGet implements GenericOperation{
    
    
        @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String data;         
        try {            
            if (request.getParameter("id") == null) {
                data = "{\"error\":\"id is mandatory\"}";
            } else {
                TutorDao oTutorDAO = new TutorDao(Conexion.getConection());
                TutorBean oTutor = new TutorBean();
                oTutor.setId(Integer.parseInt(request.getParameter("id")));
                oTutorDAO.get(oTutor);
                GsonBuilder gsonBuilder = new GsonBuilder();
                gsonBuilder.setDateFormat("dd/MM/yyyy");
                Gson gson = gsonBuilder.create();
                data = gson.toJson(oTutor);
                
            }
            return data;
        } catch (Exception e) {
            throw new ServletException("TutorGetJson: View Error: " + e.getMessage());
        }
    }
    
    
    
    
}

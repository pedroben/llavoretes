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
import net.llavoretes.bean.PagoBean;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import net.llavoretes.dao.PagoDao;
import net.llavoretes.helper.Conexion;



public class PagoGet implements GenericOperation{
    
    
        @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String data;         
        try {            
            if (request.getParameter("id") == null) {
                data = "{\"error\":\"id is mandatory\"}";
            } else {
                PagoDao oPagoDAO = new PagoDao(Conexion.getConection());
                PagoBean oPago = new PagoBean();
                oPago.setId(Integer.parseInt(request.getParameter("id")));
                oPagoDAO.get(oPago);
                GsonBuilder gsonBuilder = new GsonBuilder();
                gsonBuilder.setDateFormat("dd/MM/yyyy");
                Gson gson = gsonBuilder.create();
                data = gson.toJson(oPago);
                
            }
            return data;
        } catch (Exception e) {
            throw new ServletException("TutorGetJson: View Error: " + e.getMessage());
        }
    }
    
    
    
    
}

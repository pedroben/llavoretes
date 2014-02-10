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
import net.llavoretes.bean.ProfesorBean;
import net.llavoretes.dao.ProfesorDao;
import net.llavoretes.helper.Conexion;

/**
 *
 * @author al037184
 */
public class ProfesorGet implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String data;         
        try {            
            if (request.getParameter("id") == null) {
                data = "{\"error\":\"id is mandatory\"}";
            } else {
                ProfesorDao oProfesorDAO = new ProfesorDao(Conexion.getConection());
                ProfesorBean oProfesor = new ProfesorBean();
                oProfesor.setId(Integer.parseInt(request.getParameter("id")));
                oProfesorDAO.get(oProfesor);
                GsonBuilder gsonBuilder = new GsonBuilder();
                gsonBuilder.setDateFormat("dd/MM/yyyy");
                Gson gson = gsonBuilder.create();
                data = gson.toJson(oProfesor);
                
            }
            return data;
        } catch (Exception e) {
            throw new ServletException("ProfesorGetJson: View Error: " + e.getMessage());
        }
    }
}
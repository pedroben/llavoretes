/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.llavoretes.operaciones;

/**
 *
 * @author mati
 */


import com.google.gson.Gson;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.llavoretes.helper.Conexion;
import net.llavoretes.helper.EncodingUtil;
import net.llavoretes.bean.ProfesorBean;
import net.llavoretes.dao.ProfesorDao;



public class ProfesorSave implements GenericOperation{
    
     @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        try {
            ProfesorDao oProfesorDAO = new ProfesorDao(Conexion.getConection());
            ProfesorBean oProfesor = new ProfesorBean();
            Gson gson = new Gson();
            String jason = request.getParameter("json");
            jason = EncodingUtil.decodeURIComponent(jason);
            oProfesor = gson.fromJson(jason, oProfesor.getClass());
            Map<String, String> data = new HashMap<>();
            if (oProfesor != null) {
                oProfesor = oProfesorDAO.set(oProfesor);
                data.put("status", "200");
                data.put("message", Integer.toString(oProfesor.getId()));
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

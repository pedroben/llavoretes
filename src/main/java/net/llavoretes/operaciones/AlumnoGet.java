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
import net.llavoretes.bean.AlumnoBean;
import com.google.gson.Gson;
import net.llavoretes.dao.AlumnoDao;
import net.llavoretes.helper.Conexion;


public class AlumnoGet implements GenericOperation{
    
     @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String data;         
        try {            
            if (request.getParameter("id") == null) {
                data = "{\"error\":\"id is mandatory\"}";
            } else {
                AlumnoDao oAlumnoDAO = new AlumnoDao(Conexion.getConection());
                AlumnoBean oAlumno = new AlumnoBean();
                oAlumno.setId(Integer.parseInt(request.getParameter("id")));
                oAlumnoDAO.get(oAlumno);
                data = new Gson().toJson(oAlumno);
            }
            return data;
        } catch (Exception e) {
            throw new ServletException("AlumnoGetJson: View Error: " + e.getMessage());
        }
    }
    
    
    
    
}

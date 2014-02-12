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
import net.llavoretes.bean.AlumnoBean;
import net.llavoretes.dao.AlumnoDao;



public class AlumnoSave implements GenericOperation{
    
     @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        try {
            AlumnoDao oAlumnoDAO = new AlumnoDao(Conexion.getConection());
            AlumnoBean oAlumno = new AlumnoBean();
            Gson gson = new Gson();
            String jason = request.getParameter("json");
            jason = EncodingUtil.decodeURIComponent(jason);
            oAlumno = gson.fromJson(jason, oAlumno.getClass());
            Map<String, String> data = new HashMap<>();
            if (oAlumno != null) {
                oAlumno = oAlumnoDAO.set(oAlumno);
                data.put("status", "200");
                data.put("message", Integer.toString(oAlumno.getId()));
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

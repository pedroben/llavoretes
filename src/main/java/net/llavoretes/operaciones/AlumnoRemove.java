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
import net.llavoretes.bean.AlumnoBean;
import net.llavoretes.dao.AlumnoDao;
import net.llavoretes.helper.Conexion;

/**
 *
 * @author al037184
 */
public class AlumnoRemove implements GenericOperation{
    
    
     @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        try {
             AlumnoDao oAlumnoDAO = new AlumnoDao(Conexion.getConection());
            AlumnoBean oAlumno = new AlumnoBean();                                           
            oAlumno.setId(Integer.parseInt(request.getParameter("id")));            
            Map<String, String> data = new HashMap<>();
            if (oAlumno != null) {
                oAlumnoDAO.remove(oAlumno);
                data.put("status", "200");
                data.put("message", "se ha eliminado el registro con id=" + oAlumno.getId());
            } else {
                data.put("status", "error");
                data.put("message", "error");
            }
            Gson gson = new Gson();
            String resultado = gson.toJson(data);
            return resultado;        
        } catch (Exception e) {
            throw new ServletException("AlumnoRemoveJson: View Error: " + e.getMessage());
        }
    }
    
  
}

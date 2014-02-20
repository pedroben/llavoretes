/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.llavoretes.operaciones;

/**
 *
 * @author llavoretes
 */


import com.google.gson.Gson;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.llavoretes.helper.Conexion;
import net.llavoretes.helper.EncodingUtil;
import net.llavoretes.bean.IncidenciaBean;
import net.llavoretes.dao.IncidenciaDao;



public class IncidenciaRemove implements GenericOperation{
    
     @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        try {
            IncidenciaDao oIncidenciaDAO = new IncidenciaDao(Conexion.getConection());
            IncidenciaBean oIncidencia = new IncidenciaBean();                                           
            oIncidencia.setId(Integer.parseInt(request.getParameter("id")));            
            Map<String, String> data = new HashMap<>();
            if (oIncidencia != null) {
                oIncidenciaDAO.remove(oIncidencia);
                data.put("status", "200");
                data.put("message", "se ha eliminado el registro con id=" + oIncidencia.getId());
            } else {
                data.put("status", "error");
                data.put("message", "error");
            }
            Gson gson = new Gson();
            String resultado = gson.toJson(data);
            return resultado;        
        } catch (Exception e) {
            throw new ServletException("IncidenciaRemoveJson: View Error: " + e.getMessage());
        }
    }
    
    
    
    
}

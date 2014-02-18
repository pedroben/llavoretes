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
import net.llavoretes.bean.CursoBean;
import net.llavoretes.dao.CursoDao;



public class CursoRemove implements GenericOperation{
    
    
     @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        try {
             CursoDao oCursoDAO = new CursoDao(Conexion.getConection());
            CursoBean oCurso = new CursoBean();                                           
            oCurso.setId(Integer.parseInt(request.getParameter("id")));            
            Map<String, String> data = new HashMap<>();
            if (oCurso != null) {
                oCursoDAO.remove(oCurso);
                data.put("status", "200");
                data.put("message", "se ha eliminado el registro con id=" + oCurso.getId());
            } else {
                data.put("status", "error");
                data.put("message", "error");
            }
            Gson gson = new Gson();
            String resultado = gson.toJson(data);
            return resultado;        
        } catch (Exception e) {
            throw new ServletException("CursoRemoveJson: View Error: " + e.getMessage());
        }
    }
    
  
}

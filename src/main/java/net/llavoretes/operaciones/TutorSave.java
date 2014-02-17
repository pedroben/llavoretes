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
import net.llavoretes.bean.TutorBean;
import net.llavoretes.dao.TutorDao;




public class TutorSave implements GenericOperation{
    
     @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        
        try {
            TutorDao oTutorDAO = new TutorDao(Conexion.getConection());
            TutorBean oTutor = new TutorBean();
            Gson gson = new Gson();
            String jason = request.getParameter("json");
            jason = EncodingUtil.decodeURIComponent(jason);
            oTutor = gson.fromJson(jason, oTutor.getClass());
            Map<String, String> data = new HashMap<>();
            if (oTutor != null) {
                oTutor = oTutorDAO.set(oTutor);
                data.put("status", "200");
                data.put("message", Integer.toString(oTutor.getId()));
            } else {
                data.put("status", "error");
                data.put("message", "error");
            }
            String resultado = gson.toJson(data);
            return resultado;
        } catch (Exception e) {
            throw new ServletException("TutorSaveJson: View Error: " + e.getMessage());
        }
    }
    
  

    
}

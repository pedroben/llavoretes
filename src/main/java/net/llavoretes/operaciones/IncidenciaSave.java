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
import com.google.gson.GsonBuilder;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.llavoretes.helper.Conexion;
import net.llavoretes.helper.EncodingUtil;
import net.llavoretes.bean.IncidenciaBean;
import net.llavoretes.dao.IncidenciaDao;




public class IncidenciaSave implements GenericOperation{
    
    
       @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        try {
            IncidenciaDao oIncidenciaDAO = new IncidenciaDao(Conexion.getConection());
            IncidenciaBean oIncidencia = new IncidenciaBean();            
            Gson gson=  new GsonBuilder().setDateFormat("dd/MM/yyyy").create();
            String jason = request.getParameter("json");
            jason = EncodingUtil.decodeURIComponent(jason);
            oIncidencia = gson.fromJson(jason, oIncidencia.getClass());
            Map<String, String> data = new HashMap<>();
            if (oIncidencia != null) {
                oIncidencia = oIncidenciaDAO.set(oIncidencia);
                data.put("status", "200");
                data.put("message", Integer.toString(oIncidencia.getId()));
            } else {
                data.put("status", "error");
                data.put("message", "error");
            }
            String resultado = gson.toJson(data);
            return resultado;
        } catch (Exception e) {
            throw new ServletException("IncidenciaSaveJson: View Error: " + e.getMessage());
        }
    }
}

    
//     @Override
//    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//
//        
//        try {
//            IncidenciaDao oIncidenciaDAO = new IncidenciaDao(Conexion.getConection());
//            IncidenciaBean oIncidencia = new IncidenciaBean();
//            Gson gson = new Gson();
//            String jason = request.getParameter("json");
//            jason = EncodingUtil.decodeURIComponent(jason);
//            oIncidencia = gson.fromJson(jason, oIncidencia.getClass());
//            Map<String, String> data = new HashMap<>();
//            if (oIncidencia != null) {
//                oIncidencia = oIncidenciaDAO.set(oIncidencia);
//                data.put("status", "200");
//                data.put("message", Integer.toString(oIncidencia.getId()));
//            } else {
//                data.put("status", "error");
//                data.put("message", "error");
//            }
//            String resultado = gson.toJson(data);
//            return resultado;
//        } catch (Exception e) {
//            throw new ServletException("IncidenciaSaveJson: View Error: " + e.getMessage());
//        }
//    }
//    
//    
//    
//    
//}

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
import net.llavoretes.bean.MesBean;
import net.llavoretes.dao.MesDao;
import net.llavoretes.helper.Conexion;
import net.llavoretes.helper.EncodingUtil;

/**
 *
 * @author al037184
 */
public class MesSave implements GenericOperation{
    
     @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        try {
            MesDao oMesDAO = new MesDao(Conexion.getConection());
            MesBean oMes = new MesBean();
            Gson gson = new Gson();
            String jason = request.getParameter("json");
            jason = EncodingUtil.decodeURIComponent(jason);
            oMes = gson.fromJson(jason, oMes.getClass());
            Map<String, String> data = new HashMap<>();
            if (oMes != null) {
                oMes = oMesDAO.set(oMes);
                data.put("status", "200");
                data.put("message", Integer.toString(oMes.getId()));
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

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.llavoretes.operaciones;

import com.google.gson.Gson;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.llavoretes.helper.Conexion;
import net.llavoretes.helper.EncodingUtil;
import net.llavoretes.bean.ProductoBean;
import net.llavoretes.dao.ProductoDao;

/**
 *
 * @author rafa
 */
public class ProductoRemove implements GenericOperation {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        try {
            ProductoDao oProductoDAO = new ProductoDao(Conexion.getConection());
            ProductoBean oProducto = new ProductoBean();                                           
            oProducto.setId(Integer.parseInt(request.getParameter("id")));            
            Map<String, String> data = new HashMap<>();            
            if (oProducto != null) {
                oProductoDAO.remove(oProducto);    
                data.put("status", "200");
                data.put("message", "se ha eliminado el registro con id=" + oProducto.getId());
            } else {
                data.put("status", "error");
                data.put("message", "error");
            }
            Gson gson = new Gson();
            String resultado = gson.toJson(data);
            return resultado;        
        } catch (Exception e) {
            throw new ServletException("ProductoRemoveJson: View Error: " + e.getMessage());
        }
    }
}

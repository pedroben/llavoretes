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


public class IncidenciaGetprettycolumns  implements GenericOperation{
    
     @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        try {
            String data = "{\"data\": [\"id\", \"fecha\", \"descripcion\", \"Id Alumno\"]}";
            return data;
        } catch (Exception e) {
            throw new ServletException("IncidenciaGetprettycolumnsJson: View Error: " + e.getMessage());
        }
    }
  
    
}

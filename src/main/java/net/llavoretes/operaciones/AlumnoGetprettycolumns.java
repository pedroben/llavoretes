/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.llavoretes.operaciones;

/**
 *
 * @author llavoretes
 */

import java.io.UnsupportedEncodingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.llavoretes.data.MysqlData;




public class AlumnoGetprettycolumns implements GenericOperation{
    
     @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        try {
            String data = "{\"data\": [\"id\", \"nif\", \"nombre\", \"primer apellido\", \"segundo apellido\", \"sexo\", \"direccion\", \"telefono 1\", \"telefono2\", \"email\", \"id alumno\"]}";
            return data;
        } catch (Exception e) {
            throw new ServletException("AlumnoGetpagesJson: View Error: " + e.getMessage());
        }
    }
    
    
    
}

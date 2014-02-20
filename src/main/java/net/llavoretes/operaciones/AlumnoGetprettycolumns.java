/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package net.llavoretes.operaciones;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author al037184
 */
public class AlumnoGetprettycolumns implements GenericOperation{
    
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        try {
            String data = "{\"data\": [\"id\", \"nombre\", \"ape1\", \"ape2\", \"nif\", \"tutores\", \"grupo\", \"horario\", \"medicacion\", \"otros\"]}";
            return data;
        } catch (Exception e) {
            throw new ServletException("AlumnoGetpagesJson: View Error: " + e.getMessage());
        }
    }
  
    
}
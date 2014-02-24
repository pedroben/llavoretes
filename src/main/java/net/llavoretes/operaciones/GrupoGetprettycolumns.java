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
public class GrupoGetprettycolumns implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        try {
            String data = "{\"data\": [\"id\", \"Nombre aula\", \"Franja edad\", \"id_profesor\"]}";
            return data;
        } catch (Exception e) {
            throw new ServletException("GrupoGetpagesJson: View Error: " + e.getMessage());
        }
    }

}

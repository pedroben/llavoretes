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

public class ProfesorGetprettycolumns implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        try {
            String data = "{\"data\": [\"id\", \"nif\", \"nombre\", \"primer apellido\", \"segundo apellido\", \"direccion\", \"telefono \", \"email\", \"horario\", \"id grupo\"]}";
            return data;
        } catch (Exception e) {
            throw new ServletException("ProfesorGetpagesJson: View Error: " + e.getMessage());
        }
    }

}

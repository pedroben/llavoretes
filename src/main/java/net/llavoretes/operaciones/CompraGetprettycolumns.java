/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.llavoretes.operaciones;

import java.io.UnsupportedEncodingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.llavoretes.dao.CompraDao;
import net.llavoretes.data.MysqlData;

/**
 *
 * @author rafa
 */
public class CompraGetprettycolumns implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        try {
            String data = "{\"data\": [\"id\", \"cliente\", \"producto\", \"cantidad\", \"fecha\"]}";
            return data;
        } catch (Exception e) {
            throw new ServletException("CompraGetprettycolumnsJson: View Error: " + e.getMessage());
        }
    }
}

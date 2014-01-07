/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.rafaelaznar.conexion;


import java.sql.Connection;


public interface GenericConnection {
    Connection crearConexion();
}
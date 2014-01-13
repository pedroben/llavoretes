/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.rafaelaznar.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import net.rafaelaznar.data.MysqlData;
import net.rafaelaznar.helper.Conexion;
import net.rafaelaznar.helper.FilterBean;
import net.rafaelaznar.bean.CompraBean;

public class CompraDao_Mysql implements CompraDao {

    private final MysqlData oMysql;
    private final Conexion.Tipo_conexion enumTipoConexion;

    public CompraDao_Mysql(Conexion.Tipo_conexion tipoConexion) throws Exception {
        oMysql = new MysqlData();
        enumTipoConexion = tipoConexion;
    }

    @Override
    public int getPages(int intRegsPerPag, ArrayList<FilterBean> hmFilter, HashMap<String, String> hmOrder) throws Exception {
        int pages;
        try {
            oMysql.conexion(enumTipoConexion);
            pages = oMysql.getPages("compra", intRegsPerPag, hmFilter, hmOrder);
            oMysql.desconexion();
            return pages;
        } catch (Exception e) {
            throw new Exception("CompraDao.getPages: Error: " + e.getMessage());
        }
    }

    @Override
    public int getCount(ArrayList<FilterBean> hmFilter) throws Exception {
        int pages;
        try {
            oMysql.conexion(enumTipoConexion);
            pages = oMysql.getCount("compra", hmFilter);
            oMysql.desconexion();
            return pages;
        } catch (Exception e) {
            throw new Exception("CompraDao.getCount: Error: " + e.getMessage());
        }
    }

    @Override
    public ArrayList<CompraBean> getPage(int intRegsPerPag, int intPage, ArrayList<FilterBean> hmFilter, HashMap<String, String> hmOrder) throws Exception {
        ArrayList<Integer> arrId;
        ArrayList<CompraBean> arrCompra = new ArrayList<>();
        try {
            oMysql.conexion(enumTipoConexion);
            arrId = oMysql.getPage("compra", intRegsPerPag, intPage, hmFilter, hmOrder);
            Iterator<Integer> iterador = arrId.listIterator();
            while (iterador.hasNext()) {
                CompraBean oCompraBean = new CompraBean(iterador.next());
                arrCompra.add(this.get(oCompraBean));
            }
            oMysql.desconexion();
            return arrCompra;
        } catch (Exception e) {
            throw new Exception("CompraDao.getPage: Error: " + e.getMessage());
        }
    }

    @Override
    public CompraBean get(CompraBean oCompraBean) throws Exception {
        if (oCompraBean.getId() > 0) {
            try {
                oMysql.conexion(enumTipoConexion);
                if (!oMysql.existsOne("compra", oCompraBean.getId())) {
                    oCompraBean.setId(0);
                } else {
                    oCompraBean.setId_cliente(Integer.parseInt(oMysql.getOne("compra", "id_cliente", oCompraBean.getId())));
                    oCompraBean.setId_producto(Integer.parseInt(oMysql.getOne("compra", "id_producto", oCompraBean.getId())));
                    //--fecha
                    String strFecha = oMysql.getOne("compra", "fecha", oCompraBean.getId());
                    if (strFecha != null) {
                        Date dFecha = new SimpleDateFormat("yyyy-MM-dd").parse(strFecha);
                        oCompraBean.setFecha(dFecha);
                    } else {
                        oCompraBean.setFecha(new Date(0));
                    }
                    //fin de fecha
                    oCompraBean.setCantidad(Integer.parseInt(oMysql.getOne("compra", "cantidad", oCompraBean.getId())));
                    //oCompraBean.setId_factura(Integer.parseInt(oMysql.getOne("compra", "id_factura", oCompraBean.getId())));
                }
            } catch (Exception e) {
                throw new Exception("CompraDao.getCompra: Error: " + e.getMessage());
            } finally {
                oMysql.desconexion();
            }
        } else {
            oCompraBean.setId(0);
        }
        return oCompraBean;
    }

    @Override
    public CompraBean set(CompraBean oCompraBean) throws Exception {
        try {
            oMysql.conexion(enumTipoConexion);
            oMysql.initTrans();
            if (oCompraBean.getId() == 0) {
                oCompraBean.setId(oMysql.insertOne("compra"));
            }

            oMysql.updateOne(oCompraBean.getId(), "compra", "id_cliente", oCompraBean.getId_cliente().toString());
            oMysql.updateOne(oCompraBean.getId(), "compra", "id_producto", oCompraBean.getId_producto().toString());
            oMysql.updateOne(oCompraBean.getId(), "compra", "cantidad", oCompraBean.getCantidad().toString());
            java.text.SimpleDateFormat oSimpleDateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd");
            oMysql.updateOne(oCompraBean.getId(), "compra", "fecha", oSimpleDateFormat.format(oCompraBean.getFecha()));
            oMysql.updateOne(oCompraBean.getId(), "compra", "id_factura",  oCompraBean.getCantidad().toString());

            oMysql.commitTrans();
        } catch (Exception e) {
            oMysql.rollbackTrans();
            throw new Exception("CompraDao.setCompra: Error: " + e.getMessage());
        } finally {
            oMysql.desconexion();
        }
        return oCompraBean;
    }

    @Override
    public void remove(CompraBean oCompraBean) throws Exception {
        try {
            oMysql.conexion(enumTipoConexion);
            oMysql.removeOne(oCompraBean.getId(), "compra");
            oMysql.desconexion();
        } catch (Exception e) {
            throw new Exception("CompraDao.removeCompra: Error: " + e.getMessage());
        } finally {
            oMysql.desconexion();
        }
    }

    @Override
    public ArrayList<String> getColumnsNames() throws Exception {
        ArrayList<String> alColumns = null;
        try {
            oMysql.conexion(enumTipoConexion);
            alColumns = oMysql.getColumnsName("compra", Conexion.getDatabaseName());
            oMysql.desconexion();

        } catch (Exception e) {
            throw new Exception("CompraDao.removeCompra: Error: " + e.getMessage());
        } finally {
            oMysql.desconexion();
        }
        return alColumns;
    }
}

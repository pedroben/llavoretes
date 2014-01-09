/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.rafaelaznar.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import net.rafaelaznar.data.MysqlData;
import net.rafaelaznar.helper.Conexion;
import net.rafaelaznar.helper.FilterBean;
import net.rafaelaznar.bean.TipoproductoBean;

public class TipoproductoDao_Mysql implements TipoproductoDao {

    private final MysqlData oMysql;
    private final Conexion.Tipo_conexion enumTipoConexion;

    public TipoproductoDao_Mysql(Conexion.Tipo_conexion tipoConexion) throws Exception {
        oMysql = new MysqlData();
        enumTipoConexion = tipoConexion;
    }

    @Override
    public int getPages(int intRegsPerPag, ArrayList<FilterBean> hmFilter, HashMap<String, String> hmOrder) throws Exception {
        int pages;
        try {
            oMysql.conexion(enumTipoConexion);
            pages = oMysql.getPages("tipoproducto", intRegsPerPag, hmFilter, hmOrder);
            oMysql.desconexion();
            return pages;
        } catch (Exception e) {
            throw new Exception("TipoproductoDao.getPages: Error: " + e.getMessage());
        }
    }

    @Override
    public int getCount(ArrayList<FilterBean> hmFilter) throws Exception {
        int pages;
        try {
            oMysql.conexion(enumTipoConexion);
            pages = oMysql.getCount("tipoproducto", hmFilter);
            oMysql.desconexion();
            return pages;
        } catch (Exception e) {
            throw new Exception("TipoproductoDao.getCount: Error: " + e.getMessage());
        }
    }

    @Override
    public ArrayList<TipoproductoBean> getPage(int intRegsPerPag, int intPage, ArrayList<FilterBean> hmFilter, HashMap<String, String> hmOrder) throws Exception {
        ArrayList<Integer> arrId;
        ArrayList<TipoproductoBean> arrTipoproducto = new ArrayList<>();
        try {
            oMysql.conexion(enumTipoConexion);
            arrId = oMysql.getPage("tipoproducto", intRegsPerPag, intPage, hmFilter, hmOrder);
            Iterator<Integer> iterador = arrId.listIterator();
            while (iterador.hasNext()) {
                TipoproductoBean oTipoproductoBean = new TipoproductoBean(iterador.next());
                arrTipoproducto.add(this.get(oTipoproductoBean));
            }
            oMysql.desconexion();
            return arrTipoproducto;
        } catch (Exception e) {
            throw new Exception("TipoproductoDao.getPage: Error: " + e.getMessage());
        }
    }

    @Override
    public TipoproductoBean get(TipoproductoBean oTipoproductoBean) throws Exception {
        if (oTipoproductoBean.getId() > 0) {
            try {
                oMysql.conexion(enumTipoConexion);
                oTipoproductoBean.setDescripcion(oMysql.getOne("tipoproducto", "descripcion", oTipoproductoBean.getId()));
            } catch (Exception e) {
                throw new Exception("TipoproductoDao.getTipoproducto: Error: " + e.getMessage());
            } finally {
                oMysql.desconexion();
            }
        } else {
            oTipoproductoBean.setId(0);
        }
        return oTipoproductoBean;
    }

    @Override
    public TipoproductoBean set(TipoproductoBean oTipoproductoBean) throws Exception {
        try {
            oMysql.conexion(enumTipoConexion);
            oMysql.initTrans();
            if (oTipoproductoBean.getId() == 0) {
                oTipoproductoBean.setId(oMysql.insertOne("tipoproducto"));
            }
            oMysql.updateOne(oTipoproductoBean.getId(), "tipoproducto", "descripcion", oTipoproductoBean.getDescripcion());
            oMysql.commitTrans();
        } catch (Exception e) {
            oMysql.rollbackTrans();
            throw new Exception("TipoproductoDao.setTipoproducto: Error: " + e.getMessage());
        } finally {
            oMysql.desconexion();
        }
        return oTipoproductoBean;
    }

    @Override
    public void remove(TipoproductoBean oTipoproductoBean) throws Exception {
        try {
            oMysql.conexion(enumTipoConexion);
            oMysql.removeOne(oTipoproductoBean.getId(), "tipoproducto");
            oMysql.desconexion();
        } catch (Exception e) {
            throw new Exception("TipoproductoDao.removeTipoproducto: Error: " + e.getMessage());
        } finally {
            oMysql.desconexion();
        }
    }

    @Override
    public ArrayList<String> getColumnsNames() throws Exception {
        ArrayList<String> alColumns=null;
        try {
            oMysql.conexion(enumTipoConexion);
            alColumns=oMysql.getColumnsName("tipoproducto", Conexion.getDatabaseName());
            oMysql.desconexion();
            
        } catch (Exception e) {
            throw new Exception("TipoproductoDao.removeTipoproducto: Error: " + e.getMessage());
        } finally {
            oMysql.desconexion();
        }
        return alColumns;
    }
}

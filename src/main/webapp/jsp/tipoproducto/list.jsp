<%-- 
    Document   : list.jsp
    Created on : Jan 16, 2013, 12:57:09 PM
    Author     : rafa
--%>
<%@page import="net.rafaelaznar.helper.Conexion"%>
<%@page import="net.rafaelaznar.dao.TipoproductoDao_Mysql"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%
    TipoproductoDao_Mysql oTipoproductoDao_Mysql = new TipoproductoDao_Mysql(Conexion.getConection());
    ArrayList<String> alColumnsNames = (ArrayList<String>) oTipoproductoDao_Mysql.getColumnsNames();
    Iterator<String> oIterador = alColumnsNames.listIterator();
    String strNombreMantenimiento = "Tipoproducto";
%>
<div id="tipoproducto_list">
    <div class="span12">
        <div class="row-fluid">
            <div class="span7">       
                <h2><%=strNombreMantenimiento%></h2>
                <div id="order"></div>
                <div id="filter"></div>            
                <div id="registers"></div>
                <div id="pagination"></div>
            </div>
            <div class="span5">
                <div class="text-right">
                    <legend>Filtro</legend> 
                    <form class="navbar-form pull-right" action="Controller" method="post" id="empresaForm">
                        <fieldset>                                                                     
                            <span>
                                <select id="selectFilter" name="filter" width="80" style="width: 100px">
                                    <%
                                        while (oIterador.hasNext()) {
                                            String strNombreColumna = oIterador.next();
                                            String strNombreColumnaPretty = strNombreColumna.charAt(0) + strNombreColumna.substring(1);
                                    %>
                                    <option value="<%=strNombreColumna%>"><%=strNombreColumnaPretty%></option>
                                    <% }%>
                                </select>
                            </span>
                            <span>
                                <select id="selectFilteroperator" name="filteroperator" width="80" style="width: 100px">
                                    <option>like</option>
                                    <option>notlike</option>
                                    <option>equals</option>
                                    <option>notequalto</option>
                                    <option>less</option>
                                    <option>lessorequal</option>
                                    <option>greater</option>
                                    <option>greaterorequal</option> 
                                </select>
                                <input id="inputFiltervalue" name="filtervalue" type="text" size="20" maxlength="50" value=""  width="100" style="width: 90px"/>
                            </span>
                            <span>
                                <input type="submit" class="btn" id="btnFiltrar" name="btnFiltrar" value="Filtrar <%=strNombreMantenimiento%>" />
                            </span>
                        </fieldset>
                    </form>
                </div>
                <div class="text-right">
                    <legend>Registros por página</legend> 
                    <form class="navbar-form pull-right" action="Controller" method="post" id="nrrpForm" >
                        <fieldset>                                               
                            <span>
                                <select  id="rpp" name="nrpp" value="select" style="width: 80px">                        
                                    <option>5</option>
                                    <option selected>10</option>
                                    <option>20</option>
                                    <option>50</option>
                                    <option>100</option>
                                </select>  
                            </span>                   
                        </fieldset>
                    </form>                
                </div> 
                <button class="btn" id="crear">Crear <%=strNombreMantenimiento%></button>
            </div>
        </div>
        <br>
        <div id="datos"></div>
        <div id="datos2"></div>
    </div>
    <!-- Modales -->
    <div id="modal01" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-header"></div>
        <div class="modal-body"></div>
        <div class="modal-footer"></div>
    </div>
    <div id="modal02" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-header"></div>
        <div class="modal-body"></div>
        <div class="modal-footer"></div>
    </div>
</div>
<script>


    var control_tipoproducto_list = function() {
        //contexto privado
        function cargaBotoneraMantenimiento() {
            var botonera = [
                {"class": "btn btn-mini action01", "icon": "icon-eye-open", "text": ""},
                {"class": "btn btn-mini action02", "icon": "icon-zoom-in", "text": ""},
                {"class": "btn btn-mini action03", "icon": "icon-pencil", "text": ""},
                {"class": "btn btn-mini action04", "icon": "icon-remove", "text": ""}
            ];
            return botonera;
        }

        function cargaBotoneraBuscando() {
            var botonera = [
                {"class": "btn btn-mini action01", "icon": "icon-ok", "text": ""}
            ];
            return botonera;
        }

        function loadDivView(view, place, id) {
            $(place).empty().append((view.getObjectTable(id))
                    + '<button class="btn btn-primary" id="limpiar">Limpiar</button>');
            $('#limpiar').click(function() {
                $(place).empty();
            });
        }

        function loadModalForm(view, place, id, action) {
            cabecera = '<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>';
            if (action == "edit") {
                cabecera += '<h3 id="myModalLabel">Edición de ' + view.getObject().getName() + "</h3>";
            } else {
                cabecera += '<h3 id="myModalLabel">Alta de ' + view.getObject().getName() + "</h3>";
            }
            pie = '<button class="btn btn-primary" data-dismiss="modal" aria-hidden="true">Cerrar</button>';

            loadForm(place, cabecera, view.getEmptyForm(), pie, false);
            if (action == "edit") {
                view.doFillForm(id);
            } else {
                $('#id').val('0').attr("disabled", true);
                //$('#nombre').focus();
            }
            $('#submitForm').unbind('click');
            $('#submitForm').click(function() {
                enviarDatosUpdateForm(view, id);
                return false;
            });
        }

        function removeConfirmationModalForm(view, place, id) {
            cabecera = "<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">×</button>" +
                    "<h3 id=\"myModalLabel\">Borrado de " + view.getObject().getName() + "</h3>";
            pie = "<div id=\"result\">¿Seguro que desea borrar el registro?</div>" +
                    '<button id="btnBorrarSi" class="btn btn-danger" data-dismiss="modal" aria-hidden="true">Sí</button>' +
                    '<button class="btn btn-primary" data-dismiss="modal" aria-hidden="true">No</button>';
            loadForm(place, cabecera, view.getObjectTable(id), pie, false);
            $('#btnBorrarSi').unbind('click');
            $('#btnBorrarSi').click(function() {
                resultado = view.getObject().removeOne(id);
                cabecera = "<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">×</button>" + "<h3 id=\"myModalLabel\">Respuesta del servidor</h3>";
                pie = "<button class=\"btn btn-primary\" data-dismiss=\"modal\" aria-hidden=\"true\">Cerrar</button>";
                loadForm('#modal02', cabecera, "Código: " + resultado["status"] + "<br />" + resultado["message"] + "<br />", pie, true);
            });
        }

        function loadModalView(view, place, id) {
            cabecera = "<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">×</button>" +
                    "<h3 id=\"myModalLabel\">Detalle de " + view.getObject().getName() + "</h3>";
            pie = "<button class=\"btn btn-primary\" data-dismiss=\"modal\" aria-hidden=\"true\">Cerrar</button>";
            loadForm(place, cabecera, view.getObjectTable(id), pie, true);
        }

        function enviarDatosUpdateForm(view, id) {
            $.fn.serializeObject = function()
            {
                // http://jsfiddle.net/davidhong/gP9bh/
                var o = {};
                var a = this.serializeArray();
                $.each(a, function() {
                    if (o[this.name] !== undefined) {
                        if (!o[this.name].push) {
                            o[this.name] = [o[this.name]];
                        }
                        o[this.name].push(this.value || '');
                    } else {
                        o[this.name] = encodeURIComponent(this.value) || '';
                    }
                });
                return o;
            };
            var jsonObj = [];
            jsonObj = $('#formulario').serializeObject();
            jsonfile = {json: JSON.stringify(jsonObj)};
            cabecera = "<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">×</button>" + "<h3 id=\"myModalLabel\">Respuesta del servidor</h3>";
            pie = "<button class=\"btn btn-primary\" data-dismiss=\"modal\" aria-hidden=\"true\">Cerrar</button>";
            resultado = view.getObject().saveOne(jsonfile);
            if (resultado["status"] = "200") {
                mensaje = 'valores actualizados correctamente para el cliente con id=' + resultado["message"];
                loadForm('#modal02', cabecera, "Código: " + resultado["status"] + "<br />" + mensaje + "<br />" + view.getObjectTable(resultado["message"]), pie, true);
            } else {
                mensaje = 'el servidor ha retornado el mensaje de error=' + resultado["message"];
                loadForm('#modal02', cabecera, "Código: " + resultado["status"] + "<br />" + mensaje + "<br />" + view.getObjectTable(resultado["message"]), pie, true);
            }
        }
        return {
            inicia: function(view, pag, order, ordervalue, rpp, filter, filteroperator, filtervalue, callback,prefijo_div) {

                var thisObject = this;

                //controlar que no estemos en una página fuera de órbita

                if (parseInt(pag) > parseInt(view.getObject().getPages(rpp, filter, filteroperator, filtervalue))) {
                    pag = view.getObject().getPages(rpp, filter, filteroperator, filtervalue);
                }

                //muestra la botonera de páginas

                $(prefijo_div + " #pagination").empty().append(view.getLoading()).html(view.getPageLinks(pag, rpp, filter, filteroperator, filtervalue));                

                //muestra el listado principal

                if (callback) {
                    $(prefijo_div + " #datos").empty().append(view.getLoading()).html(view.getPageTable(pag, order, ordervalue, rpp, filter, filteroperator, filtervalue, cargaBotoneraBuscando()));
                } else {
                    $(prefijo_div + " #datos").empty().append(view.getLoading()).html(view.getPageTable(pag, order, ordervalue, rpp, filter, filteroperator, filtervalue, cargaBotoneraMantenimiento()));
                }

                //muestra la frase con el número de registros de la consulta

                $(prefijo_div + " #registers").empty().append(view.getLoading()).html(view.getRegistersInfo(filter, filteroperator, filtervalue));

                //muestra la frase de estado de la ordenación de la tabla

                $(prefijo_div + " #order").empty().append(view.getLoading()).html(view.getOrderInfo(order, ordervalue));

                //muestra la frase de estado del filtro de la tabla aplicado

                $(prefijo_div + " #filter").empty().append(view.getLoading()).html(view.getFilterInfo(filter, filteroperator, filtervalue));

                //asignación eventos de la botonera de cada línea del listado principal
                if (callback) {
                    $(prefijo_div + ' .btn.btn-mini.action01').unbind('click');
                    $(prefijo_div + ' .btn.btn-mini.action01').click(callback);
                } else {
                    $(prefijo_div + ' .btn.btn-mini.action01').unbind('click');
                    $(prefijo_div + ' .btn.btn-mini.action01').click(function() {
                        loadDivView(view, prefijo_div + ' #datos2', $(this).attr('id'));
                    });

                    $(prefijo_div + ' .btn.btn-mini.action02').unbind('click');
                    $(prefijo_div + ' .btn.btn-mini.action02').click(function() {
                        loadModalView(view, prefijo_div + ' #modal01', $(this).attr('id'));
                    });

                    $(prefijo_div + ' .btn.btn-mini.action03').unbind('click');
                    $(prefijo_div + ' .btn.btn-mini.action03').click(function() {
                        loadModalForm(view, prefijo_div + ' #modal01', $(this).attr('id'), "edit");
                    });

                    $(prefijo_div + ' .btn.btn-mini.action04').unbind('click');
                    $(prefijo_div + ' .btn.btn-mini.action04').click(function() {
                        removeConfirmationModalForm(view, prefijo_div + ' #modal01', $(this).attr('id'));
                    });
                }

                //asignación de evento del enlace para quitar el orden en el listado principal

                $(prefijo_div + ' #linkQuitarOrden').unbind('click');
                $(prefijo_div + ' #linkQuitarOrden').click(function() {
                    thisObject.inicia(view, pag, null, null, rpp, filter, filteroperator, filtervalue, callback,null);
                });

                //asignación de evento del enlace para quitar el filtro en el listado principal

                $(prefijo_div + ' #linkQuitarFiltro').unbind('click');
                $(prefijo_div + ' #linkQuitarFiltro').click(function() {
                    thisObject.inicia(view, pag, order, ordervalue, rpp, null, null, null, callback,null);
                });

                //asignación de eventos de la ordenación por columnas del listado principal

                $.each(view.getObject().getFieldNames(), function(index, valor) {
                    $(prefijo_div + ' .orderAsc').unbind('click');
                    $(prefijo_div + ' .orderAsc' + index).click(function() {
                        rpp = $(prefijo_div + " #rpp option:selected").text();
                        thisObject.inicia(view, pag, valor, "asc", rpp, filter, filteroperator, filtervalue, callback,null);
                    });
                    $(prefijo_div + ' .orderDesc').unbind('click');
                    $(prefijo_div + ' .orderDesc' + index).click(function() {
                        rpp = $(prefijo_div + " #rpp option:selected").text();
                        thisObject.inicia(view, pag, valor, "desc", rpp, filter, filteroperator, filtervalue, callback,null);
                    });

                });

                //asignación del evento de click para cambiar de página en la botonera de paginación

                $(prefijo_div + ' .pagination_link').unbind('click');
                $(prefijo_div + ' .pagination_link').click(function() {
                    var id = $(this).attr('id');
                    rpp = $(prefijo_div + " #rpp option:selected").text();
                    thisObject.inicia(view, id, order, ordervalue, rpp, filter, filteroperator, filtervalue, callback,null);
                    return false;
                });

                $(prefijo_div + ' #crear').unbind('click');
                $(prefijo_div + ' #crear').click(function() {
                    loadModalForm(view, prefijo_div + ' #modal01', $(this).attr('id'));
                });

                //asignación del evento de filtrado al boton

                $(prefijo_div + ' #btnFiltrar').unbind('click');
                $(prefijo_div + " #btnFiltrar").click(function() {
                    filter = $(prefijo_div + " #selectFilter option:selected").text();
                    filteroperator = $(prefijo_div + " #selectFilteroperator option:selected").text();
                    filtervalue = $(prefijo_div + " #inputFiltervalue").val();
                    thisObject.inicia(view, pag, order, ordervalue, rpp, filter, filteroperator, filtervalue, callback,null);
                    return false;
                });

                //asigación de evento de refresco de la tabla cuando volvemos de una operación en ventana modal

                $(prefijo_div + ' #modal01').unbind('hidden');
                $(prefijo_div + ' #modal01').on('hidden', function() {

                    rpp = $(prefijo_div + " #rpp option:selected").text();
                    thisObject.inicia(view, pag, order, ordervalue, rpp, filter, filteroperator, filtervalue, callback,null);
                });

                //asignación del evento de cambio del numero de regs por página

                $(prefijo_div + ' #rpp').unbind('change');
                $(prefijo_div + ' #rpp').on('change', function() {
                    rpp = $(prefijo_div + " #rpp option:selected").text();
                    thisObject.inicia(view, pag, order, ordervalue, rpp, filter, filteroperator, filtervalue, callback,null);
                });
            }
        };
    };


</script>

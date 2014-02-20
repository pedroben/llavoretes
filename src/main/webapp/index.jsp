<%@page import="net.llavoretes.bean.UsuarioBean"%>
<%UsuarioBean user = (UsuarioBean) request.getSession().getAttribute("usuarioBean");%>



<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
    <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Llavoretes Gestio</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <style>
            body {
                padding-top: 60px;
                padding-bottom: 40px;
            }
        </style>
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
        <link rel="stylesheet" href="css/main.css">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/script>')</script>
        <script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
        <script src="./js/vendor/jquery.validate.min.js"></script>


        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
        <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>

    </head>
    <body>
        <!--[if lt IE 7]>
        <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->


        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> 
                        <span class="icon-bar"></span> 
                        <span class="icon-bar"></span> 
                        <span class="icon-bar"></span>
                    </a> 
                    <a class="brand" href="jsp">Llavoretes Gestio</a>                   
                    <div class="nav-collapse collapse">
                        <%if (user != null) {%>
                        <jsp:include page="jsp/menuSuperior.jsp" />   
                        <% } %>
                        <jsp:include page="jsp/usuario/infologin.jsp" />                        
                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="row-fluid">
                <%
                    if (user != null) {
                        out.print("<div class=\"span2\">");
                %>
                <jsp:include page="jsp/menuLateral.jsp" />
                <%
                        out.print("</div>");
                    }
                %>
                <%
                    if (user != null) {
                        out.print("<div class=\"span10\">");
                        out.print("<div id=\"indexContenido\"></div>");
                    } else {
                        out.print("<div class=\"span12\">");
                    }
                %>
                <div id="indexContenidoJsp">
                    <jsp:include page='<%=(String) request.getAttribute("contenido")%>' />                
                </div>
                <%
                    out.print("</div>");
                %>    
                <div class="row-fluid">
                    <div class="span12"><hr><footer><p>&copy; Javier Bonet / Pedro Benito (2014)</p></footer></div>   
                </div>
            </div>
        </div>                    

        <!-- carga de javascript -->

        <script src="js/vendor/bootstrap.min.js"></script>

        <script src="js/vendor/bootstrap-transition.js"></script>
        <script src="js/vendor/bootstrap-alert.js"></script>
        <script src="js/vendor/bootstrap-modal.js"></script>
        <script src="js/vendor/bootstrap-dropdown.js"></script>
        <script src="js/vendor/bootstrap-scrollspy.js"></script>
        <script src="js/vendor/bootstrap-tab.js"></script>
        <script src="js/vendor/bootstrap-tooltip.js"></script>
        <script src="js/vendor/bootstrap-popover.js"></script>
        <script src="js/vendor/bootstrap-button.js"></script>
        <script src="js/vendor/bootstrap-collapse.js"></script>
        <script src="js/vendor/bootstrap-carousel.js"></script>
        <script src="js/vendor/bootstrap-typeahead.js"></script>    

        <script src="js/util.js" charset="UTF-8"></script>
        <script src="js/main.js" charset="UTF-8"></script>


        <script src="js/control/profesor.js" charset="UTF-8"></script>
        <script src="js/control/alumno.js" charset="UTF-8"></script>
        <script src="js/control/grupo.js" charset="UTF-8"></script>
        <script src="js/control/tutor.js" charset="UTF-8"></script>
        <script src="js/control/curso.js" charset="UTF-8"></script>
        <script src="js/control/pago.js" charset="UTF-8"></script>
        <script src="js/control/incidencia.js" charset="UTF-8"></script>

        <script>
            /* Inicializaci�n en espa�ol para la extensi�n 'UI date picker' para jQuery. */
            /* Traducido por Vester (xvester [en] gmail [punto] com). */
            jQuery(function($) {
                $.datepicker.regional['es'] = {
                    closeText: 'Cerrar',
                    buttonImage: 'img/calendar.png',
                    prevText: '<Ant',
                    nextText: 'Sig>',
                    currentText: 'Hoy',
                    monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
                    monthNamesShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
                    dayNames: ['Domingo', 'Lunes', 'Martes', 'Mi�rcoles', 'Jueves', 'Viernes', 'S�bado'],
                    dayNamesShort: ['Dom', 'Lun', 'Mar', 'Mi�', 'Juv', 'Vie', 'S�b'],
                    dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'S�'],
                    weekHeader: 'Sm',
                    dateFormat: 'dd/mm/yy',
                    firstDay: 1,
                    isRTL: false,
                    showMonthAfterYear: false,
                    yearSuffix: ''};
                $.datepicker.setDefaults($.datepicker.regional['es']);
            });

            //para solucionar el bug de la autollamada recursiva 
            //muy dificil de encontrar y depurar
            //dos modales a la vez se pasan el foco de una a la otra
            //https://github.com/twbs/bootstrap/issues/4781
            //https://github.com/makeusabrew/bootbox/issues/60
            $(document).on('show', '.modal', function() {
                $(document).off('focusin.modal');
            });
            $(document).ready(function() {
                $('#lnkAlumnos').unbind('click');
                $('#lnkAlumnos').click(function() {
                    var alumno = objeto('alumno', '<%=request.getContextPath()%>');
                    var alumnoView = vista(alumno, '<%=request.getContextPath()%>');

                    $('#indexContenidoJsp').empty();
                    $('#indexContenido').empty().append(alumnoView.getEmptyList());

                    var alumnoControl = control_alumno_list('<%=request.getContextPath()%>');
                    alumnoControl.inicia(alumnoView, 1, null, null, 10, null, null, null, null);
                    return false;
                });
                $('#lnkProfesor').unbind('click');
                $('#lnkProfesor').click(function() {
                    var profesor = objeto('profesor', '<%=request.getContextPath()%>');
                    var profesorView = vista(profesor, '<%=request.getContextPath()%>');

                    $('#indexContenidoJsp').empty();
                    $('#indexContenido').empty().append(profesorView.getEmptyList());

                    var profesorControl = control_profesor_list('<%=request.getContextPath()%>');
                    profesorControl.inicia(profesorView, 1, null, null, 10, null, null, null, null);
                    return false;
                });
                $('#lnkGrupo').unbind('click');
                $('#lnkGrupo').click(function() {
                    var grupo = objeto('grupo', '<%=request.getContextPath()%>');
                    var grupoView = vista(grupo, '<%=request.getContextPath()%>');

                    $('#indexContenidoJsp').empty();
                    $('#indexContenido').empty().append(grupoView.getEmptyList());

                    var grupoControl = control_grupo_list('<%=request.getContextPath()%>');
                    grupoControl.inicia(grupoView, 1, null, null, 10, null, null, null, null);
                    return false;
                });
                $('#lnkTutor').unbind('click');
                $('#lnkTutor').click(function() {
                    var tutor = objeto('tutor', '<%=request.getContextPath()%>');
                    var tutorView = vista(tutor, '<%=request.getContextPath()%>');

                    $('#indexContenidoJsp').empty();
                    $('#indexContenido').empty().append(tutorView.getEmptyList());

                    var tutorControl = control_tutor_list('<%=request.getContextPath()%>');
                    tutorControl.inicia(tutorView, 1, null, null, 10, null, null, null, null);
                    return false;
                });
                $('#lnkCurso').unbind('click');
                $('#lnkCurso').click(function() {
                    var curso = objeto('curso', '<%=request.getContextPath()%>');
                    var cursoView = vista(curso, '<%=request.getContextPath()%>');

                    $('#indexContenidoJsp').empty();
                    $('#indexContenido').empty().append(cursoView.getEmptyList());

                    var cursoControl = control_curso_list('<%=request.getContextPath()%>');
                    cursoControl.inicia(cursoView, 1, null, null, 10, null, null, null, null);
                    return false;
                });
                $('#lnkPago').unbind('click');
                $('#lnkPago').click(function() {
                    var pago = objeto('pago', '<%=request.getContextPath()%>');
                    var pagoView = vista(pago, '<%=request.getContextPath()%>');

                    $('#indexContenidoJsp').empty();
                    $('#indexContenido').empty().append(pagoView.getEmptyList());

                    var pagoControl = control_pago_list('<%=request.getContextPath()%>');
                    pagoControl.inicia(pagoView, 1, null, null, 10, null, null, null, null);
                    return false;
                });
                 $('#lnkIncidencia').unbind('click');
                $('#lnkIncidencia').click(function() {
                    var incidencia = objeto('incidencia', '<%=request.getContextPath()%>');
                    var incidenciaView = vista(incidencia, '<%=request.getContextPath()%>');

                    $('#indexContenidoJsp').empty();
                    $('#indexContenido').empty().append(incidenciaView.getEmptyList());

                    var incidenciaControl = control_incidencia_list('<%=request.getContextPath()%>');
                    incidenciaControl.inicia(incidenciaView, 1, null, null, 10, null, null, null, null);
                    return false;
                });
            });

        </script>
    </body>
</html>

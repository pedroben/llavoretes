<%-- 
    Document   : menu.jsp
    Created on : Jan 18, 2013, 12:11:55 PM
    Author     : rafa
--%>


<ul class="nav">
    <div class="nav-collapse collapse">
        <ul class="nav">
            <li><a href="jsp">Inicio</a></li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Usuario <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a id="lnkHome"  href="jsp">Home</a></li>
                    <li><a id="lnkLogout" href="jsp?ob=usuario&op=logout">Logout</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Mantenimientos <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a id="lnkAlumnos" href="#">Alumnos</a></li>
                    <li><a id="lnkProfesor" href="#">Profesor</a></li>
                    <li><a id="lnkGrupo" href="#">Grupo</a></li>
                    <li><a id="lnkTutor" href="#">Tutores</a></li>
                    <li><a id="lnkCurso" href="#">Cursos</a></li>
                    <li><a id="lnkPago" href="#">Pagos</a></li>
                    <li><a id="lnkIncidencia" href="#">Incidencias</a></li>
                </ul>
            </li>

    </div>
</ul>


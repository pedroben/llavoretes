<%-- 
    Document   : form
    Created on : 18-feb-2014, 13:59:00
    Author     : llavoretes
--%>
<form class="form-horizontal" action="#" id="formulario" name="formulario">
    <h2>Pago</h2>
    <div class="control-group">
        <label class="control-label" for="inputId">Id:</label>
        <div class="controls">
            <input type="text" id="id" name="id" placeholder="id" />
        </div>
    </div>
        <div class="control-group">
            <label class="control-label"  for="inputId_curso">Id Curso:</label>
            <div class="controls">           
                <input  id="id_curso" class="input-mini" 
                        name="id_curso" type="text" size="5" maxlength="5" />
                <a class="btn btn-mini" id="id_curso_button" href="#"><i class="icon-search"></i></a>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label"  for="inputId_alumno">Id Alumno:</label>
            <div class="controls">           
                <input  id="id_alumno" class="input-mini" 
                        name="id_alumno" type="text" size="5" maxlength="5" />
                <a class="btn btn-mini" id="id_alumno_button" href="#"><i class="icon-search"></i></a>
            </div>
        </div>

        
    
        
         <div class="control-group">
        <label class="control-label"  for="inputHorario">Horario</label>
        <div class="controls">
            <select id="horario" name="horario" type="text" autofocus="autofocus">
                <option value="">Seleccione una opción...</option>
                <option value="Ordinario">Ordinario</option>
                <option value="Vespertino">Vespertino</option>
            </select>
        </div>
    </div>
        
    
        <div class="control-group">
            <label class="control-label"  for="inputMes">Mes</label>
            <div class="controls">
                <select id="mes" name="mes" type="text" autofocus="autofocus">
                    <option value="">Seleccione una opción...</option>
                    <option value="Enero">Enero</option>
                    <option value="Febrero">Febrero</option>
                    <option value="Marzo">Marzo</option>
                    <option value="Abril">Abril</option>
                    <option value="Mayo">Mayo</option>
                    <option value="Junio">Junio</option>
                    <option value="Julio">Julio</option>
                    <option value="Agosto">Agosto</option>
                    <option value="Septiembre">Septiembre</option>
                    <option value="Octubre">Octubre</option>
                    <option value="Noviembre">Noviembre</option>
                    <option value="Diciembre">Diciembre</option>
                </select>
            </div>
        </div>


<!--
        <div class="control-group">
            <label class="control-label"  for="pagado">Pagado:</label>
            <div class="controls">
                <input type="text" id="pagado" name="pagado" placeholder="pagado" size="15" />
            </div>
        </div>
-->

  <div class="control-group">
        <label class="control-label" for="inputPagado" >Pagado</label>
        <div class="controls">
            <input type="checkbox" id="pagado" name="pagado" value="" />
        </div>
    </div>



        <div class="control-group">
            <label class="control-label"  for="cantidad">Cantidad:</label>
            <div class="controls">
                <input type="text" id="cantidad" name="cantidad" placeholder="cantidad" size="15" />
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <button type="submit" id="submitForm" class="btn submitForm">Submit</button>
            </div>
        </div>
</form>

<%-- 
    Document   : form
    Created on : 20-feb-2014, 11:36:48
    Author     : llavoretes
--%>
<form class="form-horizontal" action="#" id="formulario" name="formulario">
    <h2>Entrada</h2>
    <div class="control-group">
        <label class="control-label" for="inputId">Id:</label>
        <div class="controls">
            <input type="text" id="id" name="id" placeholder="id" />
        </div>
    </div>
   <!-- <div class="control-group">
        <label class="control-label"  for="inputFechaHora">Fecha y Hora:</label>
        <div class="controls">
            <input type="text" id="fechahora" name="fechahora" size="15" placeholder="fechahora" />
        </div>
    </div>
   -->
   
   
    <div class="control-group">
        <label class="control-label"  for="inputFecha">Fecha: </label>
        <div class="controls">
            <input type="text" id="fecha" name="fecha" placeholder="fecha" />
        </div>
    </div>
    <script>$("#fecha").datepicker({
            showOn: 'both',
            buttonImageOnly: true,
            changeYear: true,
            numberOfMonths: 1});
    </script>
    
  
    <div class="control-group">
        <label class="control-label" for="inputDescripcion" >Descripcion:</label>
        <div class="controls">
            <input type="text" id="descripcion" name="descripcion" placeholder="Descripcion" size="15" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputIdAlumno">Id alumno:</label>
        <div class="controls">                
            <input readonly="true" id="id_alumno" class="input-mini"
                   name="id_alumno" type="text" size="5" maxlength="5" />  
            <a class="btn btn-mini" id="id_alumno_button" href="#"><i class="icon-search"></i></a>
        </div>
    </div>
    <div class="control-group">
        <div class="controls">
            <button type="submit" id="submitForm" class="btn submitForm">Submit</button>
        </div>
    </div>
</form>

<%-- 
    Document   : form
    Created on : 10-feb-2014, 10:11:42
    Author     : llavoretes
--%>
<form class="form-horizontal" action="#" id="formulario" name="formulario">
    <h2>Cliente</h2>
    <div class="control-group">
        <label class="control-label" for="inputId">Id:</label>
        <div class="controls">
            <input type="text" id="id" name="id" placeholder="id" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputNombre">Nombre:</label>
        <div class="controls">
            <input type="text" id="nombre" name="nombre" size="15" placeholder="nombre" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="inputApe1" >Primer apellido:</label>
        <div class="controls">
            <input type="text" id="ape1" name="ape1" placeholder="primer apellido" size="15" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputApe2">Segundo apellido:</label>
        <div class="controls">
            <input type="text" id="ape2" name="ape2" placeholder="segundo apellido" size="15" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputNif">Nif:</label>
        <div class="controls">
            <input type="text" id="nif" name="nif" placeholder="nif" size="15" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputid_primertutor">Id Primertutor:</label>
        <div class="controls">           
            <input  id="id_primertutor" class="input-mini" 
                   name="id_primertutor" type="text" size="5" maxlength="5" />
            <a class="btn btn-mini" id="id_primertutor_button" href="#"><i class="icon-search"></i></a>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputid_segundotutor">Id Segundotutor:</label>
        <div class="controls">           
            <input  id="id_segundotutor" class="input-mini" 
                   name="id_segundotutor" type="text" size="5" maxlength="5" />
            <a class="btn btn-mini" id="id_segundotutor_button" href="#"><i class="icon-search"></i></a>
        </div>
    </div>
     <div class="control-group">
        <label class="control-label"  for="inputid_grupo">Id Grupo:</label>
        <div class="controls">           
            <input  id="id_grupo" class="input-mini" 
                   name="id_grupo" type="text" size="5" maxlength="5" />
            <a class="btn btn-mini" id="id_grupo_button" href="#"><i class="icon-search"></i></a>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="horario">Horario:</label>
        <div class="controls">
            <input type="text" id="horario" name="horario" placeholder="horario" size="15" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="medicacion">Medicacion:</label>
        <div class="controls">
            <input type="text" id="medicacion" name="medicacion" placeholder="medicacion" size="15" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="otros">Otros:</label>
        <div class="controls">
            <input type="text" id="otros" name="otros" placeholder="otros" />
        </div>
    </div>
    <div class="control-group">
        <div class="controls">
            <button type="submit" id="submitForm" class="btn submitForm">Submit</button>
        </div>
    </div>
</form>


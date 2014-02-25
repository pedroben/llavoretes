<%-- 
    Document   : form
    Created on : 14-feb-2014, 12:21:47
    Author     : mati
--%>

<form class="form-horizontal" action="#" id="formulario" name="formulario">
    <h2>Tutor</h2>
    <div class="control-group">
        <label class="control-label" for="inputId">Id:</label>
        <div class="controls">
            <input type="text" id="id" name="id" placeholder="id" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputNif">Nif:</label>
        <div class="controls">
            <input type="text" id="nif" name="nif" placeholder="nif" size="15" />
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
        <label class="control-label"  for="inputSexo">Sexo:</label>
        <div class="controls">
            <input type="text" id="sexo" name="sexo" placeholder="sexo" size="15" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputDireccion">Direccion:</label>
        <div class="controls">
            <input type="text" id="direccion" name="direccion" placeholder="direccion" size="15" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputTelefono">Telefono :</label>
        <div class="controls">
            <input type="text" id="telefono" name="telefono" placeholder="telefono" size="15" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputEmail">Email:</label>
        <div class="controls">
            <input type="text" id="email" name="email" placeholder="email" size="15" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputId_Alumno">Id Alumno:</label>
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

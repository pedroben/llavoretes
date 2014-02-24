<%-- 
    Document   : form
    Author     : Pedro Benito
--%>
<form class="form-horizontal" action="#" id="formulario" name="formulario">
    <h2>Entrada</h2>
    <div class="control-group">
        <label class="control-label" for="inputId">ID:</label>
        <div class="controls">
            <input type="text" id="id" name="id" placeholder="id" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputNif">Nif</label>
        <div class="controls">
            <input type="text" id="nif" name="nif" size="15" placeholder="Documento identidad" />
        </div>
    </div>

    <div class="control-group">
        <label class="control-label"  for="inputNombre">Nombre:</label>
        <div class="controls">
            <input type="text" id="nombre" name="nombre" size="15" placeholder="Nombre" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputApe1">Primer Apellido:</label>
        <div class="controls">
            <input type="text" id="ape1" name="ape1" size="15" placeholder="Primer apellido" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputApe2">Segundo Apellido:</label>
        <div class="controls">
            <input type="text" id="ape2" name="ape2" size="15" placeholder="Segundo Apellido" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputDireccion">Direccion</label>
        <div class="controls">
            <input type="text" id="direccion" name="direccion" size="15" placeholder="Direccion" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputTelefono">Tel�fono:</label>
        <div class="controls">
            <input type="text" id="telefono" name="telefono" size="15" placeholder="M�vil o fijo" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputHorario">Horario</label>
        <div class="controls">
            <select id="horario" name="horario" type="text" autofocus="autofocus">
                <option value="">Seleccione una opci�n...</option>
                <option value="Ordinario">Ordinario</option>
                <option value="Vespertino">Vespertino</option>
            </select>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputEmail">Em@il:</label>
        <div class="controls">
            <input type="text" id="email" name="email" size="15" placeholder="Email" />
        </div>
    </div>
 
      <div class="control-group">
        <label class="control-label" for="inputId_grupo">ID Grupo</label>
        <div class="controls">                
            <input readonly="true" id="id_grupo" class="input-mini"
                   name="id_grupo" type="text" size="5" maxlength="5" />  
            <a class="btn btn-mini" id="id_grupo_button" href="#"><i class="icon-search"></i></a>
        </div>
    </div>

    <div class="control-group">
        <div class="controls">
            <button type="submit" id="submitForm" class="btn submitForm">Submit</button>
        </div>
    </div>
</form>
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
            <input type="text" id="telefono" name="direccion" size="15" placeholder="Direccion" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputTelefono">Teléfono:</label>
        <div class="controls">
            <input type="text" id="telefono" name="telefono" size="15" placeholder="Móvil o fijo" />
        </div>
    </div>
        <div class="control-group">
        <label class="control-label"  for="inputHorario">Teléfono:</label>
        <div class="controls">
            <input type="text" id="telefono" name="horario" size="15" placeholder="Ordinario o vespertino" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputEmail">Em@il:</label>
        <div class="controls">
            <input type="text" id="email" name="email" size="15" placeholder="Email" />
        </div>
    </div>
    <div class="control-group">
        <div class="controls">
            <button type="submit" id="submitForm" class="btn submitForm">Submit</button>
        </div>
    </div>
</form>
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
        <label class="control-label"  for="inputNombreaula">Nombre aula</label>
        <div class="controls">
            <input type="text" id="nombreaula" name="nombreaula" size="15" placeholder="Nombre Aula" />
        </div>
    </div>

    <div class="control-group">
        <label class="control-label"  for="inputFranjaedad">Franja edad</label>
        <div class="controls">
            <input type="text" id="franjaedad" name="franjaedad" size="15" placeholder="Franja Edad" />
        </div>
    </div>
    
        <div class="control-group">
        <label class="control-label"  for="inputId_profesor">Id Profesor</label>
        <div class="controls">
            <input type="text" id="id_profesor" name="id_profesor" size="15" placeholder="Id profesor" />
        </div>
    </div>
    
    
    <div class="control-group">
        <div class="controls">
            <button type="submit" id="submitForm" class="btn submitForm">Submit</button>
        </div>
    </div>
</form>
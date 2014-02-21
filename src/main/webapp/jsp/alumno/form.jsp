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
        <label class="control-label"  for="inputNombre">Nombre:</label>
        <div class="controls">
            <input type="text" id="nombre" name="nombre" size="15" placeholder="Nombre" />
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
        <label class="control-label"  for="tutor">Id Tutor</label>
        <div class="controls">           
            <input  id="id_primertutor" class="input-mini" 
                   name="id_primertutor" type="text" size="5" maxlength="5" />
            <a class="btn btn-mini" id="id_primertutor_button" href="#"><i class="icon-search"></i></a>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="inputId_grupo">ID Grupo</label>
        <div class="controls">
            <input type="text" id="id_grupo" name="id_grupo" placeholder="Id grupo" />
            <a class="btn btn-mini" id="id_grupo_button" href="#"><i class="icon-search"></i></a>
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
        <label class="control-label"  for="inputMedicacion">Medicación</label>
        <div class="controls">
            <input type="text" id="otros" name="medicacion" size="15" placeholder="Medicación" />
        </div>
    </div>
     <div class="control-group">
        <label class="control-label"  for="inputOtros">Otros</label>
        <div class="controls">
            <input type="text" id="otros" name="otros" size="15" placeholder="Otros" />
        </div>
    </div>
   
    
    <div class="control-group">
        <div class="controls">
            <button type="submit" id="submitForm" class="btn submitForm">Submit</button>
        </div>
    </div>
</form>

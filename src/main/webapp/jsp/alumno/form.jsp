<%-- 
    Document   : form
    Author     : Llavoretes
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
        <label class="control-label"  for="inputNif">Nif</label>
        <div class="controls">
            <input type="text" id="nif" name="nif" size="15" placeholder="Documento identidad" />
        </div>
    </div>
    </div>
        <div class="control-group">
        <label class="control-label"  for="inputHorario">Teléfono:</label>
        <div class="controls">
            <input type="text" id="telefono" name="horario" size="15" placeholder="Ordinario o vespertino" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputMedicacion">Em@il:</label>
        <div class="controls">
            <input type="text" id="email" name="medicacion" size="15" placeholder="Medicacion" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputOtros">Teléfono:</label>
        <div class="controls">
            <input type="text" id="telefono" name="otros" size="15" placeholder="Otros" />
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
        <label class="control-label" for="inputId_primertutor">ID Grupo</label>
        <div class="controls">
            <input type="text" id="id_primertutor" name="id_primertutor" placeholder="Id Primer Tutor" />
            <a class="btn btn-mini" id="id_primer_button" href="#"><i class="icon-search"></i></a>
        </div>
    </div>
    
    <div class="control-group">
        <label class="control-label" for="inputId_segundotutor">ID Grupo</label>
        <div class="controls">
            <input type="text" id="id_primertutor" name="id_segundotutor" placeholder="Id Segundo Tutor" />
            <a class="btn btn-mini" id="id_segundo_button" href="#"><i class="icon-search"></i></a>
        </div>
    </div>
    
        <div class="control-group">
        <div class="controls">
            <button type="submit" id="submitForm" class="btn submitForm">Submit</button>
        </div>
    </div>
</form>
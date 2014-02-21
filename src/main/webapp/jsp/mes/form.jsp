<%-- 
    Document   : form
    Created on : 18-feb-2014, 13:59:00
    Author     : llavoretes
--%>
<form class="form-horizontal" action="#" id="formulario" name="formulario">
    <h2>Mes</h2>
    <div class="control-group">
        <label class="control-label" for="inputId">Id:</label>
        <div class="controls">
            <input type="text" id="id" name="id" placeholder="id" />
        </div>
        <div class="control-group">
            <label class="control-label"  for="inputNombre">Mes</label>
            <div class="controls">
                <select id="mes" name="nombre" type="text" autofocus="autofocus">
                    <option value="">Seleccione una opción...</option>
                    <option value="enero">Enero</option>
                    <option value="febrero">Febrero</option>
                    <option value="marzo">Marzo</option>
                    <option value="abril">Abril</option>
                    <option value="mayo">Mayo</option>
                    <option value="junio">Junio</option>
                    <option value="julio">Julio</option>
                    <option value="agosto">Agosto</option>
                    <option value="septiembre">Septiembre</option>
                    <option value="octubre">Octubre</option>
                    <option value="noviembre">Noviembre</option>
                    <option value="diciembre">Diciembre</option>
                </select>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <button type="submit" id="submitForm" class="btn submitForm">Submit</button>
            </div>
        </div>
</form>

<%-- 
    Document   : form
    Created on : Jan 21, 2013, 10:24:17 AM
    Author     : rafa
--%>
<form class="form-horizontal" action="Controller" method="post" id="productoForm">
    <legend>Formulario de producto</legend>
    <fieldset>

        <div class="control-group">
            <label class="control-label" for="codigo">Código: </label>
            <div class="controls">
                <input id="codigo" name="codigo"
                       type="text" size="30" maxlength="50" autofocus="autofocus"
                       />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="descripcion">Descripción: </label> 
            <div class="controls">
                <input id="descripcion"
                       name="descripcion" type="text" size="30" maxlength="50"
                       />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="precio">Precio: </label> 
            <div class="controls">
                <input id="precio"
                       name="precio" type="text" size="30" maxlength="50"
                       /> 
            </div>
        </div>           
        <div class="control-group">
            <label class="control-label" for="id_tipoproducto">Tipo de producto: </label> 
            <div class="controls">                
                <input readonly="true" id="id_tipoproducto" class="input-mini"
                       name="id_tipoproducto" type="text" size="5" maxlength="5"
                       />  
                <input type="submit" name="searchingfor" value="tipoproducto" />

                <span id="descripcion_tipoproducto" class="alert alert-success"></span>
            </div>
        </div>             
        <div class="control-group">
            <div class="controls">
                <input type="submit" name="enviar"  />
            </div>
        </div>
    </fieldset>
</form>





<form id="formulario" class="form-horizontal" name="formulario" action="json">
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
        <label class="control-label"  for="inputEmail">Email:</label>
        <div class="controls">
            <input type="text" id="email" name="email" placeholder="email" size="15" />
        </div>
    </div>
    <div class="control-group">
        <div class="controls">
            <button type="submit" id="submitForm" class="btn submitForm">Submit</button>
        </div>
    </div>
</form>

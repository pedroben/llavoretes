function ajaxCallSync(url, type, data) {
    return $.ajax({
        type: type,
        url: url,
        data: data,
        async: false,
        timeout: 30000
    });        
}  

function ajaxCallASync(url, type, data, callBackFunction) {
    $.ajax({
        type: type,
        url: url,
        data: data,
        async: true,
        timeout: 30000,
        success:callBackFunction
    });
}    
    
function getNeighborhood(link,  page_number, total_pages, neighborhood) { 
    page_number=parseInt(page_number);
    total_pages=parseInt(total_pages);
    neighborhood=parseInt(neighborhood);
    vector = "<div class=\"pagination\"><ul>";
    if (page_number > 1)
        vector+=("<li><a class=\"pagination_link\" id=\"" + (page_number - 1) + "\" href=\"" + link + (page_number - 1) + "\">prev</a></li>");
    if (page_number > neighborhood + 1)
        vector+=("<li><a class=\"pagination_link\" id=\"1\" href=\"" + link + "1\">1</a></li>");
    if (page_number > neighborhood + 2)
        vector+=("<li>" + "<a href=\"#\">...</a>" + "</li>");
    for (i = (page_number - neighborhood); i <= (page_number + neighborhood); i++){
        if (i >= 1 && i <= total_pages){
            if (page_number == i){
                vector+=("<li class=\"active\"><a class=\"pagination_link\" id=\"" + i + "\" href=\"" + link +     i + "\">" + i + "</a></li>");
            }            
            else
                vector+=("<li><a class=\"pagination_link\" id=\"" + i + "\" href=\"" + link + i + "\">" + i + "</a></li>");
        }
    }
    if (page_number < total_pages - (neighborhood + 1))
        vector+=("<li>" + "<a href=\"#\">...</a>" + "</li>");
    if (page_number < total_pages - (neighborhood))
        vector+=("<li><a class=\"pagination_link\" id=\"" + total_pages + "\" href=\"" + link + total_pages + "\">" + total_pages + "</a></li>");
    if (page_number < total_pages)
        vector+=("<li><a class=\"pagination_link\"  id=\"" + (page_number + 1) + "\" href=\"" + link + (page_number + 1) + "\">next</a></li>");        
    vector += "</ul></div>";
    return vector;
}

function buildDataTable(cabecera,campos,datos){
    var tabla="<table class=\"table table table-striped table-condensed\">";
    if (cabecera!=null){
        tabla+='<tr>';
        $.each(cabecera, function(index, value) {
            tabla+='<th>' + value + '</th>';
        })
        tabla+='</tr>';
    }
    $.each(datos['list'], function(index, value) {
        tabla+='<tr>';
            
        $.each(campos, function(index, valor) {
            tabla+='<td>' + value[valor] + '</td>';
        })            
        tabla+='<td><div class="btn-toolbar"><div class="btn-group">';
        tabla+='<a class="btn btn-mini action01" id=' + value.id + ' href="#"><i class="icon-eye-open"></i></a>';
        tabla+='<a class="btn btn-mini action02" id=' + value.id + ' href="#"><i class="icon-zoom-in"></i></a>';            
        tabla+='<a class="btn btn-mini action03" id=' + value.id + ' href="#"><i class="icon-pencil"></i></a>';            
        tabla+='<a class="btn btn-mini action04" id=' + value.id + ' href="#"><i class="icon-remove"></i></a>';            
        tabla+='</div></div></td>';
        tabla+='</tr>';    
    });
    tabla+="</table>";
    return tabla;       
}   

function buildViewTable(cabecera,campos,datos){        
    var tabla="<table class=\"table table table-bordered table-condensed\">";        
    $.each(campos, function(index, valor) {
        tabla+='<tr><td><strong>' + cabecera[index] +  '</strong></td><td>' + datos[valor] + '</td></tr>';
    })  
    tabla+='</table>';
    return tabla;
}
    
function loadUpdateFormData(campos,datos){      
    $.each(campos, function(index, valor) {            
        $('#' + campos[index]).val(datos[campos[index]]);
    })         
} 

function loadForm(modalName,headerData,bodyData,footerData,keyb){
    $(modalName + ' .modal-header').empty().append(headerData);   
    $(modalName + ' .modal-body').empty().append(bodyData);                
    $(modalName + ' .modal-footer').empty().append(footerData); 
    $(modalName).modal({
        keyboard: keyb
    })
}

function startSpinner(place,ContextPath) {
    $(place).empty(); 
    $(place).html('<img src="' + ContextPath + '/img/ajax-loading.gif" alt="cargando..." />');
    
};

function createDiv(id,data) {
    var divContainer = $('<div>').attr({
        id: id
    });
    $('body').append(divContainer);
    $('#'+id).append(data);
}

function procesaAjax(direccion,funcion){
    $.ajax({
        url: direccion,
        //data: "nocache=" + Math.random(),
        type: "GET",
        dataType: "json",
        beforeSend: function () {            
        },
        success: function(source){        
            $("#data").empty(); 
            funcion(source);
        },
        error: function(dato){
            $("#data").empty(); 
            $("#data").append("ERROR en la recepción de datos de clientes");
        }
    });  
}

function showObjeto(source){
    $("#data").append("<p>" + source['id'] + " " + source['nombre'] + "</p><hr/>");         
}

function showLista(source){     
    $.each(source['list'], function(index) {
        $("#data").append('<p>1: index: ' + index + ' id: ' + source['list'][index]['id']  + ' nombre: ' + source['list'][index]['nombre'] + '</p><hr/>');
    });
    $.each(source['list'], function(index, value) {
        $("#data").append('<p>2: index: ' + index + ' id: ' + value['id']  + ' nombre: ' + value['nombre'] + '</p><hr/>');
    });
    $.each(source['list'], function(index, value) {
        showObjeto(value);
    });
}

function replaceAll(str, search, rpl) {
    return str.split(search).join(rpl);
}

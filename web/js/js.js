$(document).ready(function () {
    $("#selector_origen").change(function () {

        // dejamos vacias las option del select de destino y el valor vacio para que al cambiar no se quede el ultimo seleccionado
        $('#selector_destino').children('option').remove();
        //$('#selector_destino').append('<option selected value=""> Selecciona tu destino </option>');

        // recoger la localidad de origen y la enviamos mediante la funtion al servidor
        var origen = $("#selector_origen").val();
        enviar_origen(origen);
    });

});

function AJAXCrearObj() {
    if (window.XMLHttpRequest) {
        // navegadores que siguen los estándares 
        objAjax = new XMLHttpRequest();
    } else {
        // navegadores obsoletos 
        objAjax = new ActiveXObject("Microsoft.XMLHTTP");
    }
    return objAjax;
}

function enviar_origen(origen) {

    objAjax_res = AJAXCrearObj();
    objAjax_res.open('GET', 'servlet_ajaxDestino?localidad_origen=' + origen, true); // pasamos el obj
    objAjax_res.send();
    objAjax_res.onreadystatechange = responder;
}

function responder() {

    if (objAjax_res.readyState == 4) {
        if (objAjax_res.status == 200) {

            // añadimos al datalist de destino lo que recibimos del servidor
            $('#selector_destino').append(objAjax_res.responseText);
        }
    }
}

function seleccionHorario(plazasOcupadas, hSalida, hLlegada, idHorario, nBilletes, precio) {
    //alert(obj);

    $('#hSalida').children().remove();
    $('#hLlegada').children().remove();
    $('#calculo').children().remove();
    $('#precioTotal').children().remove();

    $('#hSalida').append("<p> <b> Hora Salida: </b> " + hSalida + "</p>");
    $('#hLlegada').append("<p> <b> Hora Llegada: </b> " + hLlegada + "</p>");

    $('#input_hSalida').attr("value", hSalida);
    $('#input_hLlegada').attr("value", hLlegada);
    $('#input_idHorario').attr("value", idHorario);
    $('#input_plazasOcupadas').attr("value", plazasOcupadas);
    $('#input_precio').attr("value", precio);

    $('#calculo').append("<div> " + precio + "€ x " + nBilletes + " Billetes = " + (nBilletes * precio) + "€ </div>");
    $('#precioTotal').append("<div> Precio Total " + (nBilletes * precio) + "€ </div>");
}

function pasarPasajero(nViajeros) {

    var nombre1 = $('#nombre1').val();

    $('#nombrePasajero1').children().remove();
    $('#nombrePasajero1').append('<p><b> Nombre: </b>' + nombre1 + "</p>");

}

function continuar_infoPasajeros() {
    
    $('#comprobar_infoPasajeros').click();
}
<%-- 
    Document   : vista_selec_viaje
    Created on : 20-ene-2018, 19:18:27
    Author     : magm
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Información Viajeros </title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" crossorigin="anonymous">
        <link rel="stylesheet" href="styles.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js" crossorigin="anonymous"></script>
        <script type="text/javascript" src="js/js.js"></script>
    </head>
    <body>
        <%
            Empresa objEmpresa = (Empresa) session.getAttribute("objEmpresa");
            Billete objBillete = (Billete) session.getAttribute("objBillete");
            ArrayList<Viajero> arrayViajerosNuevos = (ArrayList<Viajero>) session.getAttribute("arrayViajerosNuevos");
            ArrayList<Integer> array_plazasLibres = (ArrayList<Integer>) session.getAttribute("array_plazasLibres");
        %>
        <div class="contenido">
            <div class="container-fluid">
                <div class="col-md-12">
                    <img src="./img/logo1.svg" width="300" style="margin: 10px;">
                </div>
                <div class="row">
                    <div class="col-md-9">
                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link active" id="nav-3-tab" data-toggle="tab" href="#nav-3" role="tab" aria-controls="nav-3" aria-selected="false">
                                    <span class="badge  badge-info"> 3 </span>
                                    Seleccionar Asientos 
                                </a>
                            </div>
                        </nav>
                        <br>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-3" role="tabpanel" aria-labelledby="nav-3-tab">
                                <div class="col-md-5 offset-md-1">
                                    <div class="card">
                                        <div class="card-header">
                                            Indica el numero de asiento de cada pasajero
                                        </div>
                                        <div class="card-body">
                                            <form name="formularioAsientos" method="post" accept-charset="utf-8" action="servlet_asientos">
                                                <div class="form-group row col-md-12">
                                                    <% for (int i = 0; i < objBillete.getObjSeleccionado().getnBilletes(); i++) {%>

                                                    <%
                                                        String nombre = arrayViajerosNuevos.get(i ).getNombre();
                                                    %>

                                                    <label id="nombrePasajero<% out.print(i); %>" class="col-md-7 col-form-label"><p><% out.print(nombre); %> </p></label>
                                                    <div class="col-md-5">
                                                        <select class="form-control" onchange="select_asiento('<% out.print(array_plazasLibres); %>');" id="selectViajero<% out.print(i); %>" name="asiento<% out.print(i); %>">
                                                            <% for (int j = 0; j < array_plazasLibres.size(); j++) {%>

                                                            <option value="<% out.print(array_plazasLibres.get(j)); %>"> Nº<% out.print(array_plazasLibres.get(j)); %> </option>
                                                            <% } %>
                                                        </select>
                                                    </div>
                                                    <br>
                                                    <% } %>
                                                </div>
                                                <button type="submit" class="btn btn-primary" id="comprobar_selecAsientos" hidden></button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <!--form method="post" accept-charset="utf-8" action="servlet_viaje_seleccionado"-->
                        <a href="vista_infoViajeros.jsp" class="btn btn-secondary"> Atrás </a>
                        <button onclick="continuar_selecAsientos('<% out.print(objBillete.getObjSeleccionado().getnBilletes());%>');" class="btn btn-primary"> Continuar </button><br><br>
                        <div class="card bg-info border-info">
                            <div class="card-header text-white text-center">
                                <h5> Resumen </h5>
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">
                                    <div class="card-header text-center border-info">
                                        <h6> Tu busqueda </h6>
                                    </div>
                                    <div class="card-body">
                                        <p>
                                            <b> Origen: </b>
                                            <% out.print(objBillete.getObjSeleccionado().getEstacionOrigen().getLocalidad()); %>
                                            <input type="text" name="origen" hidden value="<% out.print(objBillete.getObjSeleccionado().getEstacionOrigen().getLocalidad()); %>">
                                        </p>

                                        <p>
                                            <b> Destino: </b>
                                            <% out.print(objBillete.getObjSeleccionado().getEstacionDestino().getLocalidad()); %>
                                            <input type="text" name="destino" hidden value="<% out.print(objBillete.getObjSeleccionado().getEstacionDestino().getLocalidad()); %>">
                                        </p>

                                        <p>
                                            <b> Fecha: </b>
                                            <% out.print(objBillete.getObjSeleccionado().getFecha());%>
                                            <input type="text" name="fecha" hidden value="<% out.print(objBillete.getObjSeleccionado().getFecha());%>">
                                        </p>

                                        <p>
                                            <b> Nº Billetes: </b>
                                            <% out.print(objBillete.getObjSeleccionado().getnBilletes());%>
                                            <input type="text" name="nBilletes" hidden value="<% out.print(objBillete.getObjSeleccionado().getnBilletes());%>">
                                            <input type="text" name="distancia" hidden value="<% out.print(objBillete.getObjSeleccionado().getDistancia());%>">
                                        </p>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="card-header text-center border-info">
                                        <h6> Horario Seleccionado </h6>
                                    </div>
                                    <div class="card-body">
                                        <p id="hSalida">
                                            <% out.print("<b> Hora Salida: </b>" + objBillete.getObjSeleccionado().getViajes().get(0).getHorario().getHora_salida()); %>
                                        </p>
                                        <input type="text" name="hSalida" id="input_hSalida" hidden value="">

                                        <p id="hLlegada">
                                            <% out.print("<b> Hora Llegada: </b>" + objBillete.getObjSeleccionado().getViajes().get(0).getHorario().getHora_llegada()); %>
                                        </p>
                                        <input type="text" name="hLlegada" id="input_hLlegada" hidden value="">

                                        <input type="text" name="plazasOcupadas" id="input_plazasOcupadas" hidden value="">
                                    </div>
                                </li>
                                <li class="list-group-item bg-info text-white text-center">
                                    <p id="calculo">
                                        <% out.print(objBillete.getObjSeleccionado().getPrecio() + " x " + objBillete.getObjSeleccionado().getnBilletes() + " Billetes = " + objBillete.getObjSeleccionado().getPrecio() * objBillete.getObjSeleccionado().getnBilletes() + "€"); %>
                                    </p>
                                    <h4 id="precioTotal"> 
                                        <div>
                                            <% out.print("Precio Total " + objBillete.getObjSeleccionado().getPrecio() * objBillete.getObjSeleccionado().getnBilletes() + "€");%>                   
                                        </div>                                            
                                    </h4>
                                    <input type="number" name="precio" id="input_precio" hidden value="">
                                </li>
                            </ul>
                        </div>
                        <!--/form-->
                    </div>
                </div>
            </div>
        </div><br><br>
    </body>
</html>

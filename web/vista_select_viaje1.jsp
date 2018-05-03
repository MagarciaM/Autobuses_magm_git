<%-- 
    Document   : vista_selec_viaje
    Created on : 20-ene-2018, 19:18:27
    Author     : magm
--%>

<%@page import="modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Selección de viaje </title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" crossorigin="anonymous">
        <link rel="stylesheet" href="styles.css">
        <!--script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" crossorigin="anonymous"></script-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js" crossorigin="anonymous"></script>
        <script type="text/javascript" src="js/js.js"></script>
        
    </head>
    <body>
        <%
            Empresa objEmpresa = (Empresa) session.getAttribute("objEmpresa");
            Seleccionado S = (Seleccionado) session.getAttribute("seleccionado");
            //Obj_json = S
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
                                <a class="nav-item nav-link active" id="nav-1-tab" data-toggle="tab" href="#nav-1" role="tab" aria-controls="nav-1" aria-selected="true">
                                    <span class="badge  badge-info"> 1 </span>
                                    Elige tu horario
                                </a>
                            </div>
                        </nav>
                        <br>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-1" role="tabpanel" aria-labelledby="nav-1-tab">

                                <% for (int i = 0; i < S.getViajes().size(); i++) {%>
                                <div class="card text-center">
                                    <div class="card-header">
                                        Horario <% out.print(i + 1); %>
                                    </div>
                                    <div class="row">
                                        <div class="card-body col-md-3">
                                            <h5 class="card-title"> Hora de Salida </h5>
                                            <p class="card-text"> <% out.print(S.getViajes().get(i).getHorario().getHora_salida()); %> </p>
                                        </div>
                                        <div class="card-body col-md-3">
                                            <h5 class="card-title"> Hora de Llegada </h5>
                                            <p class="card-text"> <% out.print(S.getViajes().get(i).getHorario().getHora_llegada()); %> </p>
                                        </div>
                                        <div class="card-body col-md-2">
                                            <h5 class="card-title"> Plazas </h5>
                                            <p class="card-text"> <% out.print(S.getViajes().get(i).getPlazas_ocupadas()); %>/8 </p>
                                        </div>
                                        <div class="card-body col-md-2">
                                            <h5 class="card-title"> Precio </h5>
                                            <p class="card-text"> <strong><% out.print(S.getPrecio());%>€ </strong> Billete </p>
                                        </div>
                                        <div class="card-body col-md-2 text-white">
                                            <a id="btnSelect<% out.print(S.getViajes().get(i).getHorario().getId()); %>" onclick="seleccionHorario('<% out.print(S.getViajes().get(i).getPlazas_ocupadas()); %>', '<% out.print(S.getViajes().get(i).getHorario().getHora_salida()); %>', '<% out.print(S.getViajes().get(i).getHorario().getHora_llegada()); %>','<% out.print(S.getViajes().get(i).getHorario().getId()); %>' , '<% out.print(S.getnBilletes()); %>', '<% out.print(S.getPrecio()); %>')" class="btn btn-primary"> Seleccionar </a>
                                        </div>
                                    </div>
                                    <div class="card-footer text-muted">
                                        Duración: <% out.print(S.getViajes().get(i).getDuracion()); %>
                                        Distancia: <% out.print(S.getDistancia()); %> Km
                                    </div>
                                </div>
                                <br>
                                <% }%>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <form method="post" accept-charset="utf-8" action="servlet_viaje_seleccionado">
                            <a href="vista_home.jsp" class="btn btn-secondary"> Atrás </a>
                            <button type="submit" class="btn btn-primary"> Continuar </button><br><br>
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
                                                <% out.print(S.getEstacionOrigen().getLocalidad()); %>
                                                <input type="text" name="origen" hidden value="<% out.print(S.getEstacionOrigen().getLocalidad()); %>">
                                            </p>

                                            <p>
                                                <b> Destino: </b>
                                                <% out.print(S.getEstacionDestino().getLocalidad()); %>
                                                <input type="text" name="destino" hidden value="<% out.print(S.getEstacionDestino().getLocalidad()); %>">
                                            </p>

                                            <p>
                                                <b> Fecha: </b>
                                                <% out.print(S.getFecha());%>
                                                <input type="text" name="fecha" hidden value="<% out.print(S.getFecha());%>">
                                            </p>

                                            <p>
                                                <b> Nº Billetes: </b>
                                                <% out.print(S.getnBilletes());%>
                                                <input type="text" name="nBilletes" hidden value="<% out.print(S.getnBilletes());%>">
                                                <input type="text" name="distancia" hidden value="<% out.print(S.getDistancia());%>">
                                            </p>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="card-header text-center border-info">
                                            <h6> Horario Seleccionado </h6>
                                        </div>
                                        <div class="card-body">
                                            <p id="hSalida">
                                            </p>
                                            <input type="text" name="hSalida" id="input_hSalida" hidden value="">
                                            
                                            <p id="hLlegada">
                                            </p>
                                            <input type="text" name="hLlegada" id="input_hLlegada" hidden value="">
                                            
                                            <input type="text" name="plazasOcupadas" id="input_plazasOcupadas" hidden value="">
                                            <input type="text" name="idHorario" id="input_idHorario" hidden value="">
                                        </div>
                                    </li>
                                    <li class="list-group-item bg-info text-white text-center">
                                        <p id="calculo">
                                        </p>
                                        <h4 id="precioTotal"> 
                                            <div>
                                                Precio Total 0,00€                   
                                            </div>                                            
                                        </h4>
                                        <input type="number" name="precio" id="input_precio" hidden value="" required>
                                    </li>
                                </ul>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div><br><br>
    </body>
</html>

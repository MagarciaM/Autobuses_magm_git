<%-- 
    Document   : vista_select_viajeBackup
    Created on : 06-mar-2018, 0:56:05
    Author     : migue
--%>

<%@page import="modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Formulario Viajar </title>
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
            //session.setAttribute("option", "backup");
            Seleccionado S = (Seleccionado) session.getAttribute("seleccionado");
        %>
        <div class="contenido">
            <div class="container-fluid">
                <div class="col-md-12">
                    <img src="./img/logo1.svg" width="300" style="margin: 10px;">
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link active" id="nav-3-tab" data-toggle="tab" href="#nav-3" role="tab" aria-controls="nav-3" aria-selected="false">
                                    <span class="badge  badge-info"> Información: </span>
                                    <b> Fecha: </b>
                                    <% out.print(S.getFecha() + " || "); %>
                                    <b> Origen: </b>
                                    <% out.print(S.getEstacionOrigen().getLocalidad() + " || "); %>
                                    <b> Destino: </b>
                                    <% out.print(S.getEstacionDestino().getLocalidad()); %>
                                </a>
                            </div>
                        </nav>
                        <br>
                        <form method="post" accept-charset="utf-8" action="servlet_backup">
                            <div class="tab-content row" id="nav-tabContent">

                                <div class="col-md-5 offset-md-1">
                                    <select class="form-control" name="select_viajeBackup">
                                        <% for (int i = 0; i < S.getViajes().size(); i++) {%>
                                        <option value="<% out.print(S.getViajes().get(i).getId_viaje());%>"> <% out.print("<b> Id: </b>" + S.getViajes().get(i).getId_viaje() + " Salida: " + S.getViajes().get(i).getHorario().getHora_salida() + " Llegada: " + S.getViajes().get(i).getHorario().getHora_llegada()); %> </option>
                                        <% }%>
                                    </select>
                                </div>
                                <div class="col-md-3 offset-md-0">
                                    <a class="btn btn-secondary" reol="button" href="vista_formularioViajar.jsp"> Atras </a>
                                    <button class="btn btn-primary" type="submit"> Confirmar Llegada </button>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

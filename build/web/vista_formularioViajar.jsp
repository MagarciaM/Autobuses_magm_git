<%-- 
    Document   : vista_formularioViajar
    Created on : 06-mar-2018, 0:42:12
    Author     : migue
--%>

<%@page import="java.util.ArrayList"%>
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
            ArrayList<Estacion> arrayEstaciones = (ArrayList<Estacion>)session.getAttribute("arrayEstaciones");
            Empresa objEmpresa = (Empresa) session.getAttribute("objEmpresa");
            session.setAttribute("option", "backup");
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
                                    <span class="badge  badge-info"> * </span>
                                    Formulario Viaje 
                                </a>
                            </div>
                        </nav>
                        <br>
                        <div class="card offset-md-2 col-md-4 form-control formHome">
                        <div class="card-body">
                            <form method="post" accept-charset="utf-8" action="servlet_buscarViaje">
                                <select class="form-control form-control-lg" id="selector_origen" name="origen">
                                    <option selected value="" > Selecciona tu origen </option>
                                    <% for(int i=0 ; i<arrayEstaciones.size() ; i++) {

                                    %>  <option value="<% out.print(arrayEstaciones.get(i).getId()); %>"> <% out.print(arrayEstaciones.get(i).getLocalidad()); %></option>
                                    <%
                                        }
                                    %>
                                </select>                          
                                <br>  

                                <select class="form-control form-control-lg" id="selector_destino" name="destino">
                                    <option selected value="" > Selecciona tu destino </option>
                                </select>
                                <br>

                                <label for="fecha"> Seleciona fecha </label>
                                <input class="form-control" type="date" id="fecha" name="fecha" required>
                                <br>
                                <a class="btn btn-secondary" reol="button" href="servlet_preHome"> Atras </a>
                                <button type="submit" class="btn btn-primary"> Obtener Viajes </button>
                            </form>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

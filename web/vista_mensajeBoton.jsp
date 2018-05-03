<%-- 
    Document   : vista_mensajeBoton
    Created on : 05-mar-2018, 17:21:34
    Author     : migue
--%>

<%@page import="modelo.Empresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Información </title>
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
            String msj = (String) session.getAttribute("msj");
            String ruta = (String) session.getAttribute("ruta");
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
                                    Aviso 
                                </a>
                            </div>
                        </nav>
                        <br>
                        <div class="col-md-6 offset-md-1">
                            <div class="alert alert-warning" role="alert">
                                <% out.print(msj);%>   
                            </div>
                            <div class="offset-md-3">
                                <a href="<% out.print(ruta);%>" class="btn btn-info" role="button"> Continuar </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

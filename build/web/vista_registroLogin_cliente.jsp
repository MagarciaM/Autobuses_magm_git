<%-- 
    Document   : vista_registroLogin_cliente
    Created on : 22-feb-2018, 9:36:22
    Author     : magm
--%>

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
        %>
        <div class="contenido">
            <div class="container-fluid">
                <div class="col-md-12">
                    <h1> <% out.print(objEmpresa.getNombre());%> </h1>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link active" id="nav-3-tab" data-toggle="tab" href="#nav-3" role="tab" aria-controls="nav-3" aria-selected="false">
                                    <span class="badge  badge-info"> 3 </span>
                                    Datos del Cliente 
                                </a>
                            </div>
                        </nav>
                        <br>
                        <div class="row">
                            <div class="col-md-4 offset-md-1">
                                <form name="loginCliente" method="post" accept-charset="utf-8" action="servlet_infoViajeros">
                                    <div class="card">
                                        <div class="card-header text-center">
                                            <h5>
                                                Login Cliente
                                            </h5>
                                        </div>
                                        <div class="card-body">
                                            <div class="form-group">
                                                <label for="dni"> DNI </label>
                                                <input type="text" class="form-control" id="dni" name="dni" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="nombre"> Contraseña </label>
                                                <input type="text" class="form-control" id="nombre" name="nombre" required>
                                            </div>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="col-md-11 offset-md-3">
                                        <a href="vista_resumen.jsp" class="btn btn-secondary col-md-2"> Atrás </a>
                                        <button class="btn btn-primary col-md-3"> Acceder </button>
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-5 offset-md-1">
                                <form name="loginCliente" method="post" accept-charset="utf-8" action="servlet_infoViajeros">
                                    <div class="card">
                                        <div class="card-header text-center">
                                            <h5>
                                                Registro Cliente
                                            </h5>
                                        </div>
                                        <div class="card-body">
                                            <div class="form-group">
                                                <label for="dni"> DNI </label>
                                                <input type="text" class="form-control" id="dni" name="dni" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="nombre"> Nombre </label>
                                                <input type="text" class="form-control" id="nombre" name="nombre" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="apellidos"> Apellidos </label>
                                                <input type="text" class="form-control" id="apellidos" name="apellidos" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="apellidos"> Dirección </label>
                                                <input type="text" class="form-control" id="apellidos" name="apellidos" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="apellidos"> Email </label>
                                                <input type="email" class="form-control" id="apellidos" name="apellidos" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="fechaNac"> Fecha Nacimiento </label>
                                                <input type="date" class="form-control" id="fechaNac" name="fechaNac" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="apellidos"> Telefono </label>
                                                <input type="text" class="form-control" id="apellidos" name="apellidos" required>
                                            </div>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="col-md-11 offset-md-4">
                                        <a href="vista_resumen.jsp" class="btn btn-secondary col-md-2"> Atrás </a>
                                        <button class="btn btn-primary col-md-3"> Registrar </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><br><br>
    </body>
</html>

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
        <title> Selecionar Tarjeta </title>
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
                    <img src="./img/logo1.svg" width="300" style="margin: 10px;">
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link active" id="nav-3-tab" data-toggle="tab" href="#nav-3" role="tab" aria-controls="nav-3" aria-selected="false">
                                    <span class="badge  badge-info"> 3 </span>
                                    Selecionar Tarjeta 
                                </a>
                            </div>
                        </nav>
                        <br>
                        <div class="row">
                            <div class="col-md-4 offset-md-1">
                                <form name="loginCliente" method="post" accept-charset="utf-8" action="servlet_selectTarjeta">
                                    <div class="card">
                                        <div class="card-header text-center">
                                            <h5>
                                                Tarjetas Disponibles
                                            </h5>
                                        </div>
                                        <div class="card-body">
                                            <div class="col-md-12">
                                                <% if (objBillete.getCliente().getArray_tarjetas().size() > 0) {%>
                                                <div class="form-group col-md-12">
                                                    <select class="form-control" id="select_tarjetaCliente" name="select_tarjetaCliente">
                                                        <% for (int i = 0; i < objBillete.getCliente().getArray_tarjetas().size(); i++) {
                                                                Tarjeta objTarjeta = objBillete.getCliente().getArray_tarjetas().get(i);
                                                        %>
                                                        <option value="<% out.print(objTarjeta.getNumero());%>"><% out.print(objTarjeta.getNumero());%></option>
                                                        <% }%>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-4">
                                                    <label for="cvv"> CVV </label>
                                                    <input type="password" class="form-control" name="cvv_select" maxlength="3" required>
                                                </div>

                                                <% } else { %>

                                                <div class="alert alert-secondary" role = "alert"> 
                                                    <strong> No hay tarjetas registradas:</strong> Rellene el formulario para dar de alta una
                                                </div >
                                                <% }%>
                                            </div>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="col-md-11 offset-md-3">
                                        <% if (objBillete.getCliente().getArray_tarjetas().size() > 0) {%>
                                        <a href="vista_registroLogin_cliente.jsp" class="btn btn-secondary col-md-2"> Atrás </a>
                                        <button type="submit" class="btn btn-primary col-md-4"> Selecionar </button>
                                        <% }%>
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-5 offset-md-1">
                                <form name="registroTarjeta" method="post" accept-charset="utf-8" action="servlet_registroTarjeta">
                                    <div class="card">
                                        <div class="card-header text-center">
                                            <h5>
                                                Registro Tarjetas
                                            </h5>
                                        </div>
                                        <div class="card-body">
                                            <div class="form-group">
                                                <label for="dni"> Seleleccionar tipo de tarjeta </label>
                                                <!--input type="number" class="form-control" name="nTarjeta" required-->
                                            </div>
                                            <div class="form-group">
                                                <label for="nTarjeta"> N de Tarjeta </label>
                                                <input type="number" class="form-control" name="nTarjeta"  placeholder="1234 5678 9012 3456" required>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-md-8">
                                                    <label for="caducidad"> Caducidad </label>
                                                    <input type="date" class="form-control" name="caducidad" required>
                                                </div>
                                                <div class="form-group col-md-4">
                                                    <label for="cvv"> CVV </label>
                                                    <input type="password" class="form-control" name="cvv"  maxlength="3" required>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="col-md-11 offset-md-4">
                                        <a href="vista_registroLogin_cliente.jsp" class="btn btn-secondary col-md-2"> Atrás </a>
                                        <button type="submit" class="btn btn-primary col-md-4"> Registrar </button>
                                    </div>
                                </form>
                            </div>               
                        </div>
                    </div>
                </div>
            </div><br><br>
            </body>
            </html>

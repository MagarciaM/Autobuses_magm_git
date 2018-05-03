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
                    <img src="./img/logo1.svg" width="300" style="margin: 10px;">
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
                                <form name="loginCliente" method="post" accept-charset="utf-8" action="servlet_loginCliente">
                                    <div class="card">
                                        <div class="card-header text-center">
                                            <h5>
                                                Login Cliente
                                            </h5>
                                        </div>
                                        <div class="card-body">
                                            <div class="form-group">
                                                <label for="dni_login"> DNI </label>
                                                <input type="text" class="form-control" name="dni_login" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="pass_login"> Contraseña </label>
                                                <input type="password" class="form-control" name="pass_login" required>
                                            </div>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="col-md-11 offset-md-3">
                                        <a href="vista_resumen.jsp" class="btn btn-secondary col-md-2"> Atrás </a>
                                        <button type="submit" class="btn btn-primary col-md-3"> Acceder </button>
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-5 offset-md-1">
                                <div class="col-md-12 row">
                                    <div class="alert alert-secondary col-md-11 offset-md-1" role="alert">
                                        <strong>Nota: </strong> Si algun pasajero actua también como cliente selecionalo aqui y complete el formulario inferior,
                                        en caso contrario rellena el formulario inferior completo.
                                    </div>
                                    <div class="col-md-8">

                                        <select class="form-control" id="select_datosCliente">
                                            <% for (int i = 0; i < objBillete.getObjSeleccionado().getViajes().get(0).getViajeros().size(); i++) {

                                                    Viajero objViajero = objBillete.getObjSeleccionado().getViajes().get(0).getViajeros().get(i);

                                                    //ObjectMapper mapper = new ObjectMapper();
                                                    //String objViajero_json = mapper.writeValueAsString(objViajero);
                                            %>
                                            <option value="<% out.print(objViajero.getDni());%>"><% out.print(objBillete.getObjSeleccionado().getViajes().get(0).getViajeros().get(i).getNombre());%></option>
                                            <% }%>
                                        </select>
                                    </div>
                                    <div class="col-md-4">
                                        <button class="btn btn-primary" onclick="asignar_datosCliente();"> Asginar como Cliente </button>
                                    </div>
                                </div>
                                <br>
                                <form name="loginCliente" method="post" accept-charset="utf-8" action="servlet_registroCliente">
                                    <div class="card">
                                        <div class="card-header text-center">
                                            <h5>
                                                Registro Cliente
                                            </h5>
                                        </div>
                                        <div class="card-body">
                                            <div class="form-group">
                                                <label for="dni"> DNI </label>
                                                <input type="text" class="form-control" name="dni" id="dni_registro" onBlur="comprobarDni('dni_registro','mensajedni_registro');" required>
                                                <div class="" id="mensajedni_registro"></div>
                                            </div>
                                            <div class="form-group">
                                                <label for="pass"> Contraseña </label>
                                                <input type="password" class="form-control" name="pass" id="pass" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="pass"> Repetir Contraseña </label>
                                                <input type="password" class="form-control" name="pass1" id="pass1" required onBlur="comprobarPass();">
                                                <div class="" id="mensajePass1"></div>
                                            </div>
                                            <div class="form-group">
                                                <label for="nombre"> Nombre </label>
                                                <input type="text" class="form-control" name="nombre" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="apellidos"> Apellidos </label>
                                                <input type="text" class="form-control" name="apellidos" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="direccion"> Dirección </label>
                                                <input type="text" class="form-control" name="direccion" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="email"> Email </label>
                                                <input type="email" class="form-control" name="email" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="fecha_nac"> Fecha Nacimiento </label>
                                                <input type="date" class="form-control" name="fecha_nac" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="telefono"> Telefono </label>
                                                <input type="number" class="form-control" name="telefono" required>
                                            </div>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="col-md-11 offset-md-4">
                                        <a href="vista_resumen.jsp" class="btn btn-secondary col-md-2"> Atrás </a>
                                        <button type="submit" class="btn btn-primary col-md-3"> Registrarse </button>
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

<%-- 
    Document   : home
    Created on : 10-ene-2018, 23:29:42
    Author     : magm
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Home </title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" crossorigin="anonymous">
        <link rel="stylesheet" href="styles.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js" crossorigin="anonymous"></script>
        <script type="text/javascript" src="js/js.js"></script>
    </head>
    <body>
        <% ArrayList<Estacion> arrayEstaciones = (ArrayList<Estacion>)session.getAttribute("arrayEstaciones");%>
        <!-- Sacamos los datos de la empresa de session -->
        <% 
            Empresa objEmpresa = (Empresa)session.getAttribute("objEmpresa"); 
            session.setAttribute("option", "reservar");
        %>
        <div class="contenido">
            <div class="container-fluid">
                <div class="col-md-12">
                    <!--h1> <% //out.print(objEmpresa.getNombre()); %> </h1-->
                    <img src="./img/logo1.svg" width="300" style="margin: 10px;">
                </div>
                <div class="row"> <!-- fixed-top-->
                    <nav class="col-md-12 navbar navbar-expand-lg navbar-dark bg-info menu">
                        <a class="navbar-brand" href="#">
                            <img src="./img/logoMini.svg" width="30" height="30" class="d-inline-block align-top" alt="">
                            La Linea
                        </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav mr-auto">
                                <li class="nav-item active">
                                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#contacto"> Contacto </a>
                                </li>
                            </ul>
                            <ul class="navbar-nav justify-content-end">
                                <li class="nav-item">
                                    <a class="btn btn-outline-light my-2 my-sm-0" href="vista_formularioViajar.jsp"> Viajar </a>
                                </li>
                                <!--li li class="nav-item dropdown"> 
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Acceder / Registrarse
                                    </a>
                                    <div class="dropdown-menu">
                                        <form class="px-4 py-3">
                                            <div class="form-group">
                                                <label for="nif"> Nif </label>
                                                <input id="nif" type="text" class="form-control" placeholder="12345678A">
                                            </div>
                                            <div class="form-group">
                                                <label for="pass"> Contraseña </label>
                                                <input type="password" class="form-control" id="pass" placeholder="********">
                                            </div>
                                            <button type="submit" class="btn btn-info col-md-8"> Acceder </button>
                                        </form>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#">¿No tienes cuenta? Registrate</a>
                                    </div>
                                </li-->
                            </ul>
                            <!--form class="form-inline my-2 my-lg-0">
                                <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
                                <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Buscar</button>
                            </form-->
                        </div>
                    </nav>
                </div>

                <div class="row jumbotron divHome">
                    <div class="col-md-5">
                        <div class="container">
                            <h1 class="display-4">Planifica tu viaje</h1>
                            <p class="lead"> Disfrute de nuestro servicio de Autobuses </p>
                        </div>
                    </div>
                    <div class="card offset-md-2 col-md-4 form-control formHome">
                        <div class="card-body">
                            <form method="post" accept-charset="utf-8" action="servlet_buscarViaje">
                                <select class="form-control form-control-lg" id="selector_origen" name="origen">
                                    <option selected value="0" > Selecciona tu origen </option>
                                    <% for(int i=0 ; i<arrayEstaciones.size() ; i++) {

                                    %>  <option value="<% out.print(arrayEstaciones.get(i).getId()); %>"> <% out.print(arrayEstaciones.get(i).getLocalidad()); %></option>
                                    <%
                                        }
                                    %>
                                </select>                          
                                <br>  

                                <select class="form-control form-control-lg" id="selector_destino" name="destino">
                                    <option selected value="0" > Selecciona tu destino </option>
                                </select>
                                <br>

                                <label for="fecha"> Seleciona fecha </label>
                                <input class="form-control" type="date" id="fecha" name="fecha" value="2018-03-23" required>
                                <br>
                                
                                <label for="fecha"> Nº de billetes </label>
                                <input class="form-control" type="number" id="billetes" name="billetes" min="1" max="8" required>
                                <br>

                                <button type="submit" class="btn btn-info"> Comprobar Disponibilidad </button>
                            </form>
                        </div>
                    </div>
                </div>
                <a name="contacto"></a>
                <div class="row jumbotron">
                    <div class="col-md-4 offset-md-1">
                        <h2 class="display-4"> Contacto </h2> <br>
                        <!-- Usamos los datos de empresa que recibir por session -->
                        <h4> Nombre: </h4> <p> <% out.print(objEmpresa.getNombre()); %> </p>
                        <h4> NIF: </h4> <p> <% out.print(objEmpresa.getNif()); %> </p>
                        <h4> Dirección </h4> <p> <% out.print(objEmpresa.getDireccion()); %> </p>
                        <h4> Web: </h4> <p> <% out.print(objEmpresa.getWeb()); %> </p>
                        <h4> Email: </h4> <p> <% out.print(objEmpresa.getEmail()); %> </p>
                    </div>
                    <div class="col-md-5">
                        <h3 class="display-5"> Llegamos a toda la provincia </h3> <br>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1593866.0745841854!2d-3.020484568444762!3d38.717357221143324!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd667c1d58c47ad1%3A0x30340f3be4bc950!2sAlbacete!5e0!3m2!1ses!2ses!4v1520453116502" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

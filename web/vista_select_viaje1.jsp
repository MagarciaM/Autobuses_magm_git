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
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" crossorigin="anonymous"></script>
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
                    <h1> <% out.print(objEmpresa.getNombre());%> </h1>
                </div>
                <div class="row">
                    <div class="col-md-9">
                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link active" id="nav-1-tab" data-toggle="tab" href="#nav-1" role="tab" aria-controls="nav-1" aria-selected="true">
                                    <span class="badge  badge-info"> 1 </span>
                                    Elige tu horario
                                </a>
                                <!--a class="nav-item nav-link" id="nav-2-tab" data-toggle="tab" href="#nav-2" role="tab" aria-controls="nav-2" aria-selected="false">
                                    <span class="badge  badge-info"> 2 </span>
                                    Completar Informacion 
                                </a>
                                <a class="nav-item nav-link" id="nav-3-tab" data-toggle="tab" href="#nav-3" role="tab" aria-controls="nav-3" aria-selected="false">
                                    <span class="badge  badge-info"> 3 </span>
                                    Seleccionar Asientos 
                                </a>
                                <a class="nav-item nav-link" id="nav-4-tab" data-toggle="tab" href="#nav-4" role="tab" aria-controls="nav-4" aria-selected="false">
                                    <span class="badge  badge-info"> 4 </span>
                                    Finaliza tu compra 
                                </a-->
                                <button class="btn"> Atrás </button>
                                <button class="btn btn-primary"> Continuar </button>
                            </div>
                        </nav>
                        <br>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-1" role="tabpanel" aria-labelledby="nav-1-tab">

                                <% for (int i = 0; i < S.getPosiblesViajes().size(); i++) {%>
                                <div class="card text-center">
                                    <div class="card-header">
                                        Horario <% out.print(i + 1); %>
                                    </div>
                                    <div class="row">
                                        <div class="card-body col-md-3">
                                            <h5 class="card-title"> Hora de Salida </h5>
                                            <p class="card-text"> <% out.print(S.getPosiblesViajes().get(i).getHora_salida()); %> </p>
                                        </div>
                                        <div class="card-body col-md-3">
                                            <h5 class="card-title"> Hora de Llegada </h5>
                                            <p class="card-text"> <% out.print(S.getPosiblesViajes().get(i).getHora_llegada()); %> </p>
                                        </div>
                                        <div class="card-body col-md-2">
                                            <h5 class="card-title"> Plazas </h5>
                                            <p class="card-text"> <% out.print(S.getPosiblesViajes().get(i).getPlazas_ocupadas()); %>/8 </p>
                                        </div>
                                        <div class="card-body col-md-2">
                                            <h5 class="card-title"> Precio </h5>
                                            <p class="card-text"> <strong><% out.print(S.getPrecio()); %>€ </strong> Billete </p>
                                        </div>
                                        <div class="card-body col-md-2 text-white">
                                            <a onclick="seleccionHorario('<% out.print(S.getPosiblesViajes().get(i).getHora_salida()); %>', '<% out.print(S.getPosiblesViajes().get(i).getHora_llegada()); %>', '<% out.print(S.getnBilletes()); %>', '<% out.print(S.getPrecio()); %>')" class="btn btn-primary"> Seleccionar </a>
                                        </div>
                                    </div>
                                    <div class="card-footer text-muted">
                                        Duración: <% out.print(S.getPosiblesViajes().get(i).getDuracion()); %>
                                        Distancia: <% out.print(S.getDistancia()); %> Km
                                    </div>
                                </div>
                                <br>
                                <% }%>
                            </div>
                            <!--div class="tab-pane fade" id="nav-2" role="tabpanel" aria-labelledby="nav-2-tab">
                                <div id="accordion" >
                                    <form class="row">
                                        <div class="col-md-8 offset-md-1">
                            <% for (int i = 1; i <= S.getnBilletes(); i++) {%>
                            <div class="card">
                                <div class="card-header text-center" id="heading<% out.print(i); %>"
                                     <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse<% out.print(i); %>" aria-expanded="true" aria-controls="collapseOne">
                                            Información Viajero <% out.print(i); %>
                                        </button>
                                    </h5>
                                </div>
                                <div id="collapse<% out.print(i); %>" class="collapse" aria-labelledby="heading<% out.print(i); %>" data-parent="#accordion">
                                    <div class="card-body">
                                        <form>
                                            <div class="form-group">
                                                <label for="dni<% out.print(i); %>"> DNI </label>
                                                <input type="text" class="form-control" id="dni<% out.print(i); %>" name="dni<% out.print(i); %>" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="nombre<% out.print(i); %>"> Nombre </label>
                                                <input type="text" class="form-control" id="nombre<% out.print(i); %>" name="nombre<% out.print(i); %>" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="apellidos<% out.print(i); %>"> Apellidos </label>
                                                <input type="text" class="form-control" id="apellidos<% out.print(i); %>" name="apellidos<% out.print(i); %>" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="fechaNac<% out.print(i); %>"> Fecha Nacimiento </label>
                                                <input type="date" class="form-control" id="fechaNac<% out.print(i); %>" name="fechaNac<% out.print(i); %>" required>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <% } %>
                        </div>
                        <div clas="col-md-2">
                            <a class="btn btn-primary" href="#" role="button" onclick="pasarPasajero(<% out.print(S.getnBilletes()); %>);"> Comprobar y Continuar </a>
                        </div>
                    </form>
                </div>
            </div>
            <div class="tab-pane fade" id="nav-3" role="tabpanel" aria-labelledby="nav-3-tab">
                <div class="col-md-5 offset-md-1">
                    <div class="card">
                        <div class="card-header">
                            Indica el numero de asiento de cada pasajero
                        </div>
                        <div class="card-body">
                            <form>
                                <div class="form-group row">
                            <% for (int i = 1; i <= S.getnBilletes(); i++) {%>
                            <label id="nombrePasajero<% out.print(i); %>" class="col-sm-8 col-form-label"><p> Nombre: </p></label>
                            <div class="col-sm-4">
                                <select class="form-control" id="selectViajero<% out.print(i); %>">
                            <% for (int j = 1; j <= 8; j++) {%>
                            <option> Nº<% out.print(j); %> </option>
                            <% } %>
                        </select>
                    </div>
                    <br>
                            <% } %>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
                            <!--div class="tab-pane fade" id="nav-4" role="tabpanel" aria-labelledby="nav-4-tab">
                                <div clas="row">
                                    <div class="col-md-8">   
                                        <div class="card">
                                            <div class="card-header text-center">
                                                Información Cliente 
                                            </div>
                                            <div class="card-body">
                                                <form>
                                                    <div class="form-group">
                                                        <label for="dniCliente"> DNI </label>
                                                        <input type="text" class="form-control" id="dniCliente" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="nombreCliente"> Nombre </label>
                                                        <input type="text" class="form-control" id="nombreCliente" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="apellidosCliente"> Apellidos </label>
                                                        <input type="text" class="form-control" id="apellidosCliente" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="fechaNacCliente"> Fecha Nacimiento </label>
                                                        <input type="date" class="form-control" id="fechaNacCliente" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="direccionCliente"> Direccion </label>
                                                        <input type="text" class="form-control" id="direccionCliente" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="emailCliente"> Email </label>
                                                        <input type="email" class="form-control" id="emailCliente" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="telfCliente"> Teléfono </label>
                                                        <input type="number" class="form-control" id="telfCliente" required>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">   
                                        <div class="card">
                                            <div class="card-header text-center">
                                                Pago con Tarjeta 
                                            </div>
                                            <div class="card-body">
                                                <form>
                                                    <div class="form-group">
                                                        <label for="dniCliente"> DNI </label>
                                                        <input type="text" class="form-control" id="dniCliente" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="nombreCliente"> Nombre </label>
                                                        <input type="text" class="form-control" id="nombreCliente" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="apellidosCliente"> Apellidos </label>
                                                        <input type="text" class="form-control" id="apellidosCliente" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="fechaNacCliente"> Fecha Nacimiento </label>
                                                        <input type="date" class="form-control" id="fechaNacCliente" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="direccionCliente"> Direccion </label>
                                                        <input type="text" class="form-control" id="direccionCliente" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="emailCliente"> Email </label>
                                                        <input type="email" class="form-control" id="emailCliente" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="telfCliente"> Teléfono </label>
                                                        <input type="number" class="form-control" id="telfCliente" required>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div-->
                        </div>
                    </div>
                    <div class="col-md-3">
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
                                        </p>

                                        <p>
                                            <b> Destino: </b>
                                            <% out.print(S.getEstacionDestino().getLocalidad()); %>
                                        </p>

                                        <p>
                                            <b> Fecha: </b>
                                            <% out.print(S.getFecha());%>
                                        </p>

                                        <p>
                                            <b> Nº Billetes: </b>
                                            <% out.print(S.getnBilletes());%>
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
                                        <p id="hLlegada">
                                        </p>
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
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

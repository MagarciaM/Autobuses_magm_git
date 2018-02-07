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
            Seleccionado S = (Seleccionado) session.getAttribute("seleccionado");
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
                                <a class="nav-item nav-link active" id="nav-2-tab" data-toggle="tab" href="#nav-2" role="tab" aria-controls="nav-2" aria-selected="false">
                                    <span class="badge  badge-info"> 2 </span>
                                    Completar Informacion 
                                </a>
                            </div>
                        </nav>
                        <br>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-2" role="tabpanel" aria-labelledby="nav-2-tab">
                                <div id="accordion" >
                                    <form name="formularioViajeros" class="row" method="post" accept-charset="utf-8" action="servlet_infoViajeros">
                                        <div class="col-md-8 offset-md-1">
                                            <% for (int i = 1; i <= S.getnBilletes(); i++) {%>
                                            <div class="card">
                                                <div class="card-header text-center" id="heading<% out.print(i); %>"
                                                     <h5>
                                                        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse<% out.print(i); %>" aria-expanded="true" aria-controls="collapse<% out.print(i); %>">
                                                            Información Viajero <% out.print(i); %>
                                                        </button>
                                                    </h5>
                                                </div>
                                                <div id="collapse<% out.print(i); %>" class="collapse" aria-labelledby="heading<% out.print(i); %>" data-parent="#accordion">
                                                    <div class="card-body">
                                                        <!--form-->
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
                                                        <!--/form-->
                                                    </div>
                                                </div>
                                            </div>
                                            <% } %>
                                        </div>
                                        <!--div clas="col-md-2">
                                            <button type="submit" class="btn btn-primary"> Comprobar y Continuar </button>
                                        </div-->
                                    </form>
                                </div>
                            </div>                         
                        </div>
                    </div>
                    <div class="col-md-3">
                        <!--form method="post" accept-charset="utf-8" action="servlet_viaje_seleccionado"-->
                            <a href="vista_select_viaje1.jsp" class="btn btn-secondary"> Atrás </a>
                            <button onclick="document.formularioViajeros.submit();" class="btn btn-primary"> Continuar </button><br><br>
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
                                                <% out.print("<b> Hora Salida: </b>" + S.getPosiblesViajes().get(0).getHora_salida()); %>
                                            </p>
                                            <input type="text" name="hSalida" id="input_hSalida" hidden value="">

                                            <p id="hLlegada">
                                                <% out.print("<b> Hora Llegada: </b>" + S.getPosiblesViajes().get(0).getHora_llegada()); %>
                                            </p>
                                            <input type="text" name="hLlegada" id="input_hLlegada" hidden value="">

                                            <input type="text" name="plazasOcupadas" id="input_plazasOcupadas" hidden value="">
                                        </div>
                                    </li>
                                    <li class="list-group-item bg-info text-white text-center">
                                        <p id="calculo">
                                            <% out.print(S.getPrecio() + " x " + S.getnBilletes() + " Billetes = " + S.getPrecio()*S.getnBilletes() + "€"); %>
                                        </p>
                                        <h4 id="precioTotal"> 
                                            <div>
                                                <% out.print("Precio Total " + S.getPrecio()*S.getnBilletes() + "€"); %>                   
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

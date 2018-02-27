<%-- 
    Document   : vista_error
    Created on : 27-feb-2018, 11:49:36
    Author     : migue
--%>

<%@page import="modelo.AplicationErrorException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Aviso </title>
    </head>
    <body>
        <h1> Hello World! </h1>
        <% 
            AplicationErrorException aex = (AplicationErrorException) session.getAttribute("aex");
            out.print(aex);
        %>
    </body>
</html>

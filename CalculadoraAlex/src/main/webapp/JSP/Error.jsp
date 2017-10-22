<%-- 
    Document   : Error
    Created on : 17-oct-2017, 16:33:49
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="es.albarregas.calculadora.beans.Calculator" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora</title>
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/CSS/calculadora.css"/>
    </head>
    <body>
        <%
            Calculator calculator = (Calculator) request.getAttribute("calcula");
        %>
        <h2><%=calculator.getError()%></h2>
        <p><a href="<%= request.getContextPath()%>">Calculadora</a></p>
       
    </body>
</html>
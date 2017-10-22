<%-- 
    Document   : Resultado
    Created on : 22-oct-2017, 2:25:44
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
        <table>
            <tr>
                <td><%=calculator.getFecha()%></td>
            </tr>
            
        </table>
        <h2><%=calculator.getOperando1()%> <%=calculator.getSigno()%> 
            <%=calculator.getOperando2()%> = <%=calculator.getResultado()%></h2>
        <p><a href="<%= request.getContextPath()%>">Calculadora</a></p>
    </body>
</html>
<%-- 
    Document   : RespuestaSaludo
    Created on : 06-oct-2017, 17:10:08
    Author     : Alex
--%>


<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../CSS/Saludo-Calculadora.css" media="screen"/>
        <title>Saludo</title>
    </head>
    <body>
        <div>
            <% Calendar horaActual = Calendar.getInstance();
            int hora  = horaActual.get(Calendar.HOUR_OF_DAY);
            String saludo;
            if ((hora > 7) && (hora <=12)) { 
                saludo = "Buenos días";
            }
	    else if ((hora > 12) && (hora <=21)) {
		saludo = "Buenas tardes";
	    }
            else {
		saludo = "Buenas noches";
	    }
        
            %>
        
        
            <%
            if (request.getParameter("Sexo").equals("Hombre")) { %>
                <h1><%=saludo%> señor <%= request.getParameter("Nombre")%></h1> 
            <%    }
            else {
            %>
                <h1><%=saludo%> señora <%= request.getParameter("Nombre")%></h1>
            <% } %> 
 

            <p><a href="../index.html" > Men&uacute; inicial</a></p>
        </div>
    </body>
</html>

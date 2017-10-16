<%-- 
    Document   : Menu
    Created on : 15-oct-2017, 23:58:56
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    HttpSession sesion = request.getSession();
    //comprobamos que no se pueda acceder sin estar logeado
    if (sesion.getAttribute("user") == null){
            response.sendRedirect("Login.jsp?error=2");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menú</title>
        <link rel="stylesheet" type="text/css" href="../../CSS/HolaMundo.css" media="screen">
    </head>
    <body>
        <h1>Menú admin de <%=sesion.getAttribute("user")%>.</h1>
        <p>Opción 1.</p>
        <p>Opción 2.</p>
        <p>Opción 3.</p>
        <p>Opción 4.</p>
        <p>Opción 5.</p>
        <p><a href="LoginOUT.jsp"><input type="button" value="Cerrar sesion" name="Cerrar sesion"/></a></p>
 
    </body>
</html>

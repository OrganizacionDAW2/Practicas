<%-- 
    Document   : LoginOut
    Created on : 15-oct-2017, 0:50:23
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- LAS ETIQUETAS HTML NO HACEN FALTA --%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
    </body>
</html>

    <% //se destruye la sesion y se redirige al login
    HttpSession sesion = request.getSession();
    sesion.invalidate();
    response.sendRedirect("Login.jsp");
    %>
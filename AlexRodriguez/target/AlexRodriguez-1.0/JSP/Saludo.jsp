<%-- 
    Document   : Saludo
    Created on : 06-oct-2017, 17:00:49
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Saludo</title>
    </head>
    <body>
        <form action="RespuestaSaludo.jsp" method="post">
            <p>Nombre: <input type="text" name="Nombre"/></p>
            <p>Sexo: <input type="radio" name="Sexo" value="Hombre" checked/>Hombre <input type="radio" name="Sexo" value="Mujer"/>Mujer</p>
            <input type="submit" name="Enviar" value="Enviar"/>
        </form>
    </body>
</html>

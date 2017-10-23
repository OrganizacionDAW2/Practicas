<%-- 
    Document   : index.jsp
    Created on : 22-oct-2017, 19:50:21
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aseguradora General</title>
        <link rel="stylesheet" type="text/css" href="CSS/Presupuesto.css">
    </head>
    <body>
        <%@include file="INC/cabecera.inc"%>
        <h2>¡Elija su seguro!</h2>
        <p><strong>Por favor, escoja entre seguro de edificio, seguro de contenido o ambos, seleccionando las siguientes casillas:</strong></p>
        <form action="Eleccion" method="post">
            <label>¿Qué seguro desea?</label><br/>
            <input type="checkbox" name="edificio" value="edificio" checked="checked"/> Seguro de edificio.<br/>
            <input type="checkbox" name="contenido" value="contenido" checked="checked"/> Seguro de contenido.<br/><br/>
            <input type="submit" name="enviar" value="Enviar"/>
        </form>
        <%@include file="INC/pie.inc"%>
    </body>
</html>

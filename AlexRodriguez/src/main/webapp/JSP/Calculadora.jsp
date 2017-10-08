<%-- 
    Document   : Calculadora
    Created on : 08-oct-2017, 20:26:17
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora</title>
    </head>
    <body>
        <h1>Calculadora</h1>
        <form action="RespuestaCalculadora.jsp" method="post">
            <p>Introduzca los operandos: <input type="text" name="operando1"/> <input type="text" name="operando2"/></p>
            <input type="radio" name="operacion" value="Sumar" checked="checked"/>Sumar
            <input type="radio" name="operacion" value="Restar"/>Restar
            <input type="radio" name="operacion" value="Multiplicar"/>Multiplicar
            <input type="radio" name="operacion" value="Dividir"/>Dividir<br/><br/>
            
            <input type="submit" name="Enviar" value="Enviar"/>
            <input type="reset" name="Limpiar" value="Limpiar"/>
            <input type="button" name="Volver" value="Volver"  onclick="location='../index.html'"/>
            
        </form>
        
    </body>
</html>

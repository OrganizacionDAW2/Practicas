<%-- 
    Document   : index
    Created on : 17-oct-2017, 16:33:49
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora</title>
        <link rel="stylesheet" type="text/css" href="CSS/calculadora.css"/>
    </head>
    <body>
        <div>
            <h1>Calculadora</h1>
            <form action="controlador" method="post">
                <table>
 
                    <tr>
                        <td>Introduzca los operandos:</td>
                        <td><input type="text" name="operando1"/></td>
                        <td><input type="text" name="operando2"/></td>
                    </tr>
                
                    <tr>
                        <td><input type="radio" name="operacion" value="Sumar" checked="checked"/>Sumar</td>
                        <td><input type="radio" name="operacion" value="Restar"/>Restar</td>
                        <td><input type="radio" name="operacion" value="Multiplicar"/>Multiplicar</td>
                        <td><input type="radio" name="operacion" value="Dividir"/>Dividir</td>
                    </tr>
            
                    <tr>
                        <td>&nbsp;</td>
                        <td><input type="submit" name="Enviar" value="Enviar"/></td>
                        <td><input type="reset" name="Limpiar" value="Limpiar"/></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>

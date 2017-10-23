<%-- 
    Document   : Contenido
    Created on : 22-oct-2017, 21:55:33
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
        <%@include file="/INC/cabecera.inc"%>
        <h2>Detalles de la póliza de contenidos</h2>
        <p><strong>Por favor, introduzca la información sobre el contenido a asegurar en el siguiente formulario y pulse enviar:</strong></p>
        <form action="Contenido" method="post">
            <table>
                <tr>
                    <td>Cubrir daños accidentales:</td>
                    <td>
                        <input type="checkbox" name="accidente"/>
                    </td>
                </tr>
                
                <tr>
                    <td>Valor de los bienes a asegurar:</td>
                    <td>
                        <select name="valor">
                            <option value="10000">10.000</option>
                            <option value="20000">20.000</option>
                            <option value="30000">30.000</option>
                            <option value="50000">50.000</option>
                            <option value="100000">100.000</option>
                        </select>    
                    </td>
                </tr>
                
                <tr>
                    <td>Franquicia:</td>
                    <td>
                        <input type="radio" name="franquicia" value="ninguna" checked>Ninguna<br/>
                        <input type="radio" name="franquicia" value="500">500<br/>
                        <input type="radio" name="franquicia" value="1000">1.000
                    </td>
                </tr>

            </table>
            
            <br/>
            
            <input type="submit" name="enviar" value="Enviar"/>
        </form>
        <%@include file="/INC/pie.inc"%>
    </body>
</html>

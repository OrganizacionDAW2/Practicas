<%-- 
    Document   : Edificio
    Created on : 22-oct-2017, 21:54:28
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
        <h2>Detalles de la póliza de edificios</h2>
        <p><strong>Por favor, introduzca la información sobre su vivienda en el siguiente formulario y pulse enviar:</strong></p>
        <form action="edificio" method="post">
            <table>
                <tr>
                    <td>Tipo de edificio:</td>
                    <td>
                        <select name="tipo">
                            <option value="piso">Piso</option>
                            <option value="casa">Casa</option>
                            <option value="adosado">Adosado</option>
                            <option value="duplex">Dúplex</option>
                            <option value="chalet">Chalet</option>
                        </select>    
                    </td>
                </tr>
                
                <tr>
                    <td>Número de habitaciones:</td>
                    <td>
                        <select name="habitaciones">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5 o más</option>
                        </select>    
                    </td>
                </tr>
                
                <tr>
                    <td>Fecha de construcción:</td>
                    <td>
                        <select name="fecha">
                            <option value="1949">Antes de 1950</option>
                            <option value="1950">Entre 1950 y 1990</option>
                            <option value="1991">Entre 1991 y 2005</option>
                            <option value="2006">Entre 2006 y 2015</option>
                            <option value="2016">Después de 2015</option>
                        </select>    
                    </td>
                </tr>
                
                <tr>
                    <td>Tipo de construcción:</td>
                    <td>
                        <input type="radio" name="material" value="madera" checked>Madera<br/>
                        <input type="radio" name="material" value="hormigon">Hormigón 
                    </td>
                </tr>
                
                <tr>
                    <td>Valor estimado en el mercado:</td>
                    <td>
                        <select name="fecha">
                            <option value="25000">Menos de 50.000</option>
                            <option value="50001">Entre 50.001 y 80.000</option>
                            <option value="80001">Entre 80.001 y 100.000</option>
                            <option value="100001">Entre 100.001 y 150.000</option>
                            <option value="150001">Más de 150.000</option>
                        </select>    
                    </td>
                </tr>

            </table>
            
            <br/>
            
            <input type="submit" name="enviar" value="Enviar"/>
        </form>
        <%@include file="/INC/pie.inc"%>
    </body>
</html>

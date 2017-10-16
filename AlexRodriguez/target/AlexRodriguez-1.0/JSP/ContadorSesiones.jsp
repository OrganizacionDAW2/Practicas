<%-- 
    Document   : ContadorSesiones
    Created on : 15-oct-2017, 20:53:09
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%  Integer contador = (Integer)session.getAttribute("contadorVisitas");
        if (request.getParameter("Eliminar") != null) {
            contador = 0;
            session.setAttribute("contadorVisitas", contador);
        }
        
        else{

            if(contador!=null) {
                contador = Integer.valueOf(contador);
            } else {
                contador = 0;
            }
       
            contador++;
            session.setAttribute("contadorVisitas", contador);
        }
    %>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contador de visitas.</title>
        <link rel="stylesheet" type="text/css" href="../CSS/HolaMundo.css" media="screen">
    </head>
    <body>
        <div id="contenido">
            
            <h2>Has visitado la página <%=contador%> veces.</h2>
            <form>
                
                <a href="ContadorSesiones.jsp"><input type="button" value="Recargar" name="Recargar"/></a>
                <input type="submit" value="Eliminar" name="Eliminar"/>
                <a href="../index.html"><input type="button" value="Volver" name="Volver"/></a>
            </form>
      
            
            
        </div>
    </body>
</html>

<%-- 
    Document   : ContadorCookies
    Created on : 09-oct-2017, 20:45:19
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <% Cookie miCookie = null;
           Cookie [] arrayCookies = request.getCookies();
           
           if (arrayCookies != null) {
               for (int i = 1; i < arrayCookies.length; i++) {
                   if (arrayCookies[i].getName().equals("CONTADOR")) {
                       miCookie = arrayCookies[i];
                       break;
                   }
               }
           }
           
           if (miCookie == null) {
               miCookie = new Cookie("CONTADOR", "0");
           }
           else if (request.getParameter("Eliminar") != null) {
               miCookie.setValue("0");
           }
           
           int contador = Integer.parseInt(miCookie.getValue());
           miCookie.setValue(Integer.toString(contador+1));
           miCookie.setMaxAge(24 * 60 * 60);
           miCookie.setPath("/");
           response.addCookie(miCookie);
           
        %>
        
        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contador de visitas.</title>
        <link rel="stylesheet" type="text/css" href="../CSS/Saludo-Calculadora.css" media="screen">
    </head>
    <body>
        <div>
            <% if (miCookie.getValue().equals("1")) { %>
            <h2>Has visitado la página <%=miCookie.getValue()%> vez.</h2>
            
            <h3>Información de la Cookie.</h3>
            <p>Nombre: <%=miCookie.getName()%>.</p>
            <p>Ruta: <%=miCookie.getPath()%></p>
            <p>Caducidad: <%=miCookie.getMaxAge()%> segundos.</p>
            <p>Seguridad: <%=miCookie.getSecure()%>.</p>
            <p>Versión: <%=miCookie.getVersion()%>.</p>
            
            <%} else { %>
                    <h2>Has visitado la página <%=miCookie.getValue()%> veces.</h2>
            <%} %>
            
            <form action="ContadorCookies.jsp" method="post">
                <a href="ContadorCookies.jsp"><input type="button" value="Recargar" name="Recargar"/></a>
                <input type="submit" value="Eliminar" name="Eliminar"/>
                <a href="../index.html"><input type="button" value="Volver" name="Volver"/></a>
            </form>

        </div>
    </body>
</html>

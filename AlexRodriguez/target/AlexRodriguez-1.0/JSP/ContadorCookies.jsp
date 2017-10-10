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
           
           if (arrayCookies == null) {
               miCookie = new Cookie("CONTADOR", "0");
           }
           else if (request.getParameter("eliminar") != null) {
               miCookie.setValue("0");
           }
           
           int contador = Integer.parseInt(miCookie.getValue());
           miCookie.setValue(Integer.toString(contador+1));
           miCookie.setMaxAge(24 * 60 * 60);
           response.addCookie(miCookie);
           
        %>
        
        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contador de visitas.</title>
    </head>
    <body>        
    </body>
</html>

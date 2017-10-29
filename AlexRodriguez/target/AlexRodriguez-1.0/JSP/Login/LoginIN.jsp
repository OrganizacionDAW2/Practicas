<%-- 
    Document   : Comprobacion
    Created on : 16-oct-2017, 0:40:58
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% //comprobacion de usuario y contraseña
if (request.getParameter("user").equals("Jesus") && request.getParameter("password").equals("1234")){
    HttpSession sesion = request.getSession();
    sesion.setAttribute("user", request.getParameter("user"));
    response.sendRedirect("Menu.jsp");
}
else {//en caso de login incorrecto, nos muetra el error
    response.sendRedirect("Login.jsp?error=1");
}
%>
<!-- ESTAS ETIQUETAS NO HACEN FALTA -->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        
    </body>
</html>

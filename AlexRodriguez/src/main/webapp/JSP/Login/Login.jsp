<%-- 
    Document   : Login
    Created on : 16-oct-2017, 23:50:04
    Author     : Alex
--%>


<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


 <% 
    Cookie usuario = null;
    String msg = "";    
    Cookie [] arrayCookies = request.getCookies();
           
    if (arrayCookies != null) {
        //recorremos el array hasta encontrar la cookie "usuario"
        for (int i = 1; i < arrayCookies.length; i++) {
            if (arrayCookies[i].getName().equals("usuario")) 
                usuario = arrayCookies[i];
                break; //una vez encontrada la cookie salimos del bucle sin necesidad de seguir recorriendolo
        }
    }    
// CUANDO ENCUENTRAS LA COOKIE DEL USUARIO NO OBTINES SU VALOR
    
    if (request.getParameter("error") != null){
        //switch para el tratamiento de erroes
        switch (request.getParameter("error")){
            case "1" : msg = "Debes introducir un usuario y una contraseña válidos.";
                break;
            case "2" : msg = "Debes iniciar sesión para continuar";
                break;
        }
    }

    //obtencion de fecha de ultimo acceso con formato
    // CON ESTO OBTIENES LA FECHA ACTUAL PERO NO PUEDES SABER LA FECHA DEL ULTIMO ACCESO QUE IRA EN UNA COOKIE
    Date ultimoAcceso = new Date(session.getLastAccessedTime());
    Date fecha = new Date();
    DateFormat formato = DateFormat.getDateTimeInstance(DateFormat.MEDIUM,DateFormat.MEDIUM);


%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LogIn</title>
        <link rel="stylesheet" type="text/css" href="../../CSS/HolaMundo.css" media="screen">
    </head>
    <body>
        <h2>Inicia sesión</h2>
        <h2>Último acceso: <%=formato.format(ultimoAcceso)%></h2>
        <form action="LoginIN.jsp" method="post">
            <p id="error"><%=msg%></p>
<!-- EN EL CASO DE RECORDAR EL USUARIO NO MUESTRAS SU NOMBRE -->
            <p>Usuario: <input type="text" name="user"></p>
            <p>Contraseña: <input type="password" name="password"></p>
<!-- NO HAS CERRADO LA ETIQUETA INPUT -->
<p>Recuérdame <input type="checkbox" name="recordar"></p><br/><br/>
            <p><input type="submit" value="Enviar"> <a href="../../index.html"><input type="button" value="Volver" name="Volver"/></a></p>
        </form>


    </body>
</html>

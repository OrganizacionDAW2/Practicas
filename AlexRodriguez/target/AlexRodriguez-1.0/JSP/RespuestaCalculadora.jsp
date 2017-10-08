<%-- 
    Document   : RespuestaCalculadora
    Created on : 08-oct-2017, 20:26:32
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../CSS/Saludo-Calculadora.css" media="screen"/>
        <title>Calculadora</title>
    </head>
    <body>
        <div>
            <%try {
                Date fecha = new Date();
                SimpleDateFormat ft = new SimpleDateFormat ("dd 'de' MMMM 'de' yyyy");
                String fechaActual = ft.format(fecha);
                %>
 
                <p><%=fechaActual%></p>
        
        
                <% 
            
                int a = Integer.parseInt(request.getParameter("operando1"));
                int b = Integer.parseInt(request.getParameter("operando2"));
            
                switch(request.getParameter("operacion")) {
            
                    case "Sumar":%>
                        <h2>El resultado de sumar los números introducidos es: <%=a+b%></h2>
                        <p><a href="../index.html" > Men&uacute; inicial</a></p>
                        <%break;
                
                    case "Restar":%>
                        <h2>El resultado de restar los números introducidos es: <%=a-b%></h2>
                        <p><a href="../index.html" > Men&uacute; inicial</a></p>
                        <%break;
                
                    case "Multiplicar":%>
                        <h2>El resultado de multiplicar los números introducidos es: <%=a*b%></h2>
                        <p><a href="../index.html" > Men&uacute; inicial</a></p>
                        <%break;
                
                    case "Dividir":%>
                        <h2>El resultado de dividir los números introducidos es: <%=a/b%></h2> 
                        <p><a href="../index.html" > Men&uacute; inicial</a></p>
                        <%break;
                }
            } catch(NumberFormatException e) {%>
                    <h2>Error. Debe introducir números.</h2>
                    <p><a href="../index.html" > Men&uacute; inicial</a></p>

            <%}catch(ArithmeticException e){%>
                    <h2>Error. División entre cero.</h2>
                    <p><a href="../index.html" > Men&uacute; inicial</a></p>
            
            <%}%>
        </div>
    </body>
</html>

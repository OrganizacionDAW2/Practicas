<%-- 
    Document   : Tienda
    Created on : 16-oct-2017, 2:57:02
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String msg = "";
    String msgError = "";

    if (request.getParameter("Error") != null) {
        //switch para tratar los distintos errores
        switch(request.getParameter("Error")) {
            case "1": 
                msgError = "Seleccione un libro por favor...";
                break;
                
            case "2":
                msgError = "La cantidad de entrada no es un número válido";
                break;
                
            case "3":
                msgError = "La cantidad de entrada no puede ser 0 o negativa";
                break;
                
        }
    }

    
    int error = 0; //error=1: hay algún error, error=2: no hay errores y se escribe msg
    
    if (request.getParameter("Cesta") != null) { 
        error = 2; //al pulsar añadir a la cesta se pone error=2 para que en condiciones normales se escriba msg y se procede a comprobar la existencia de errores
        if (request.getParameter("Libro") == null) {
            //si no se ha seleccionado ningun libro, redirige al error 1, solicitando que se seleccione un libro
            response.sendRedirect("Tienda.jsp?Error=1");
            error = 1;//se modifica el valor de error porque ha habido errores, por lo que en lugar de mostrar msg se mostrara msgError
        }

        else {
            try { //se intenta pasar a entero el valor introducido en cantidad, si no es posible saltara la excepcion, mostrando el error 2, si es posible pasar el valor a entero se comprobara que no sea negativo ni 0, o se mostrara el error 3
                int cantidad = Integer.parseInt(request.getParameter("Cantidad"));
                if (cantidad <= 0) {
                    response.sendRedirect("Tienda.jsp?Error=3");
                    error = 1;
                }
 
            } catch(NumberFormatException nfe) {
                response.sendRedirect("Tienda.jsp?Error=2");
                error = 1;
            }
  
        }
        
    }
    if (error==2) { //si todo va correctamente se mostrara el mensaje 
        msg = "Añadido a la cesta " + request.getParameter("Cantidad") + " unidades del libro " + request.getParameter("Libro");
    }
    

%>





<!DOCTYPE html>
<html>
    <head>
        <title>Libronline</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="../CSS/HolaMundo.css" media="screen">
    </head>
    <body>
        <div id="contenido2">
            <div id="izquierda"><h1>Libronline</h1></div> 
            <div id="derecha"><figure><a href="InicioTienda.html"><img src="../Imagenes/Carrito.jpg"/></a></figure></div>
            <br/><br/><br/><br/><br/><br/><br/><br/>
            <div id="abajo">
                
                <%if(request.getParameter("Enviar") == null){%>
                
                <form action="Tienda.jsp" method="post">
                    <p id="cantidad"><%=msg%></p> <!-- mensaje mostrado en caso de "ejecucion normal del programa"-->
                    <p id="error"><%=msgError%></p> <!-- mensaje mostrado en caso de error-->
                    <h3>Seleccione un libro</h3>
                    <select name="Libro" size="6">
                        <option value="LA MUERTE LLEGA A PEMBERLEY">LA MUERTE LLEGA A PEMBERLEY</option>
                        <option value="LA CONJETURA DE CORTES">LA CONJETURA DE CORTES</option>
                        <option value="BUENOS DIAS, PRINCESA">BUENOS DIAS, PRINCESA</option>
                        <option value="EMOCIONES TOXICAS">EMOCIONES TOXICAS</option>
                        <option value="JUEGO DE TRONOS">JUEGO DE TRONOS</option>
                        <option value="LA ORDEN DEL TEMPLE">LA ORDEN DEL TEMPLE</option>
                    </select>
                    
                    <p id="cantidad">Cantidad: <input type="text" name="Cantidad"></p>
                    
                    <p>
                        <input type="submit" name="Cesta" value="Añadir a la cesta">
                        <input type="reset" name="Limpiar" value="Limpiar">
                        <input type="submit" name="Enviar" value="Finalizar la compra">
                    </p>
                </form>
                <%} 
// NO REALIZAS EL PROCESO DE ALMACENAR LOS DISTINTOS LIBROS EN UNA ESTRUCTURA PARA LUEGO VISUALIZARLOS
                else{ //Al pulsar Enviar(Enviar!=null) se muestra el resultado %>
                    <h3>Este es el detalle de su pedido:</h3>
                    
                    <a href="../index.html">Gracias por confiar en nosotros</a>
                   <%}
                
                %>
            </div>
            
            
        </div>
    </body>
</html>

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.practicasaula;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alex
 */
@WebServlet(name = "Registro", urlPatterns = {"/registro"})
public class Registro extends HttpServlet {
boolean fechaincorrecta=false;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
         
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Salida</title>");
            out.println("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + request.getContextPath() + "/CSS/Formulario.css\" media=\"screen\" />");
            out.println("</head>");
            out.println("<body>");
            out.println("<div id='contenido'>");
            out.println("<h2>Problemas con el registro</h2>");
            
            
            if (request.getParameter("Nombre") == null) {
                out.println("<p>El campo nombre es obligatorio.</p>");
            }
            if (request.getParameter("Usuario") == null) {
                out.println("<p>El campo usuario es obligatorio.</p>");
            }
            if (request.getParameter("Password") == null) {
                out.println("<p>El campo contraseña es obligatorio.</p>");
            }
            if (fechaincorrecta == true) {
                out.println("<p>Fecha de nacimiento incorrecta.</p>");
            }
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
            
            
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
         
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Salida</title>");
            out.println("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + request.getContextPath() + "/CSS/Formulario.css\" media=\"screen\" />");
            out.println("</head>");
            out.println("<body>");
            out.println("<div id='contenido'>");
            
            
            Map <String, String[]> parametros = request.getParameterMap(); 
            Set s = parametros.keySet();
            Iterator it = s.iterator();
            String aux = "";
          
            String dia = request.getParameter("Dia");
            String mes = request.getParameter("Mes");
            String anio = request.getParameter("Anio");
            int anioaux = Integer.parseInt(anio);
            boolean bisiesto = false;
            
            
            if (anioaux%4==0){
                bisiesto=true;
            }      
            
           
            if(("31".equals(dia) && "Abril".equals(mes)) || ("31".equals(dia) && "Junio".equals(mes)) || ("31".equals(dia) && "Septiembre".equals(mes)) || ("31".equals(dia) && "Noviembre".equals(mes)) || ("31".equals(dia) && "Febrero".equals(mes)) || ("30".equals(dia) && "Febrero".equals(mes)) || (("29".equals(dia) && "Febrero".equals(mes)) && (bisiesto == false))) {
                fechaincorrecta=true;
            }
            
            if ((fechaincorrecta == true) || (request.getParameter("Nombre") == "") || (request.getParameter("Usuario") == "") || request.getParameter("Password") == ""){    
            
                out.println("<h2>Errores en el registro.</h2>");
                out.println("<form id=\"fomulario\" action=\"../registro\" method=\"get\"> ");
                out.println("<p><input type=\"button\" name=\"Volver\" value=\"Volver\" onclick=\"history.back()\" />");
                out.println("</form>");
            
            }
            else {
                out.println("<h2>Registro satisfactorio.</h2>");
                while (it.hasNext()) {
                    String key = (String) it.next();
                    String[] valores = parametros.get("Preferencias");
                
                    switch (key) {
                    
                        case "Preferencias":
                            out.print(key + ": ");
                            for (int i=0;i<=valores.length-1;i++) {
                                out.print("<strong>" + valores[i] + "&nbsp;</strong>");
                            }
                    
                            out.println("<br><br>");
                            break;
                    
                        case "Nombre":
                            aux = request.getParameter(key);
                            break;
                        
                        case "Apellidos":
                            aux=aux + request.getParameter(key);
                        out.println("Nombre y apellidos: <strong>" + aux + "</strong><br><br>");
                        break;
                    
                    case "Sexo":
                    case "Usuario":
                        out.println(key + ": <strong>" + request.getParameter(key) + "</strong><br><br>");
                        break;
                        
                    case "Password":
                        out.println("Contraseña: <strong>" + request.getParameter(key) + "</strong><br><br>");
                        
                    case "Dia":
                        aux = request.getParameter(key) + " de ";
                        break;
                        
                    case "Mes":
                        aux=aux + request.getParameter(key) + " de ";
                        break;
                        
                    case "Anio":
                        aux=aux + request.getParameter(key);
                        out.println("Fecha de nacimiento: <strong>" + aux + "</strong><br><br>");
                        break;
                                
                        
                }
                
                
            }
            
        }
            
           
            
            out.print("<p><a href='" + request.getContextPath() + "'>Men&uacute; inicial</a></p>");
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
        }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

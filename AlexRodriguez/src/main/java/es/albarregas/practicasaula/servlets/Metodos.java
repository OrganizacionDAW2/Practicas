/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.practicasaula.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alex
 */
@WebServlet(name = "Metodos", urlPatterns = {"/meto"})
public class Metodos extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Metodos</title>"); 
            out.println("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + request.getContextPath() + "/CSS/Formulario.css\" media=\"screen\" />");
            out.println("</head>");
            out.println("<body>");
            out.println("<div id=\"div1\">");
            out.println("<h1>Métodos de petición.</h1>");
            out.println("<p id=\"p1\"><strong>getAuthType()</strong> - " + request.getAuthType() + "</p>");
            out.println("<p id=\"p1\"><strong>getContextPath()</strong> - " + request.getContextPath() + "</p>");
            out.println("<p id=\"p1\"><strong>getPathInfo()</strong> - " + request.getPathInfo() + "</p>");
            out.println("<p id=\"p1\"><strong>getMethod()</strong> - " + request.getMethod() + "</p>");
            out.println("<p id=\"p1\"><strong>getRemoteUser()</strong> - " + request.getRemoteUser() + "</p>");
            out.println("<p id=\"p1\"><strong>getRequestedSessionId()</strong> - " + request.getRequestedSessionId() + "</p>");
            //out.println("<p id=\"p1\"><strong>getDateHeader()</strong> - " + request.getDateHeader() + "</p>");
            out.println("<p id=\"p1\"><strong>getRequestURI()</strong> - " + request.getRequestURI() + "</p>");
            out.println("<p id=\"p1\"><strong>getRequestURL()</strong> - " + request.getRequestURL() + "</p>");
            out.println("<p id=\"p1\"><strong>getServletPath()</strong> - " + request.getServletPath() + "</p>");            
            
            out.print("<p><a href='" + request.getContextPath() + "'>Men&uacute; inicial</a></p>");
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
        }
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
        processRequest(request, response);
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
        processRequest(request, response);
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

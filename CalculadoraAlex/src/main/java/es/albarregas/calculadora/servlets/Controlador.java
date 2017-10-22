/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.calculadora.servlets;

import es.albarregas.calculadora.beans.Calculator;
import es.albarregas.calculadora.pojos.Division;
import es.albarregas.calculadora.pojos.Multiplicacion;
import es.albarregas.calculadora.pojos.Resta;
import es.albarregas.calculadora.pojos.Suma;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alex
 */
@WebServlet(name = "Controlador", urlPatterns = {"/controlador"})
public class Controlador extends HttpServlet {

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
        
        Date fecha = new Date();
        SimpleDateFormat ft = new SimpleDateFormat ("EEEE dd 'de' MMMM 'de' yyyy");
        String fechaActual = ft.format(fecha);
        boolean error;
        String url;
        Calculator calculadora = new Calculator();
                
        String operacion = request.getParameter("operacion"); 
        String signo = null;
        int resultado = 0;
        error = false;
        
        try {            
            
            int a = Integer.parseInt(request.getParameter("operando1"));
            int b = Integer.parseInt(request.getParameter("operando2"));
            
            switch(request.getParameter("operacion")) {
            
                case "Sumar":
                    Suma miSuma = new Suma();
                    calculadora.setFecha(fechaActual);
                    calculadora.setSigno("+");
                    calculadora.setResultado(miSuma.Sumar(a, b));
                    break;
                
                case "Restar":
                    Resta miResta = new Resta();
                    calculadora.setFecha(fechaActual);
                    calculadora.setSigno("-");
                    calculadora.setResultado(miResta.Restar(a, b));
                    break;
                
                case "Multiplicar":
                    Multiplicacion miMultiplicacion = new Multiplicacion();
                    calculadora.setFecha(fechaActual);
                    calculadora.setSigno("*");
                    calculadora.setResultado(miMultiplicacion.Multiplicar(a, b));
                    break;
                
                case "Dividir":
                    Division miDivision = new Division();
                    calculadora.setFecha(fechaActual);
                    calculadora.setSigno("/");
                    calculadora.setResultado(miDivision.Dividir(a, b));
                    break;
                }
            
            if (calculadora.getResultado() == Integer.MAX_VALUE) {
                        error = true;
                    }
            
            if (error) {
                calculadora.setError("Error: división por cero");
                url = "JSP/Error.jsp";
            }
            else {
                calculadora.setOperando1(a);
                calculadora.setOperando2(b);
                url = "JSP/Resultado.jsp";
            }
            
        }
        catch (NumberFormatException e){
            calculadora.setError("Los operandos deben ser números");
            url = "JSP/Error.jsp";
        }
        
        request.setAttribute("calcula", calculadora);
        request.getRequestDispatcher(url).forward(request, response);
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
       doPost(request, response);
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

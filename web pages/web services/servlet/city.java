/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author USER
 */
public class city extends HttpServlet {

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
        String c=request.getParameter("city");
        String weather="";
        if(c.equals("madurai")){
            weather="Madurai Weather Today ... (1–3 days):. Mostly dry. Warm (max 34°C on Mon afternoon, min 21°C on Fri night). Wind will be generally light.";
        }
        else if(c.equals("pondicherry")){
            weather="Today's temperature in Pondicherry is 27°c. Day's maximum temperature would hover at 32°c, while minimum temperature is predicted to be 23°c.";
        }
        else if(c.equals("chennai")){
            weather="Chennai, Tamil Nadu, India Weather Forecast, with current conditions, wind, air quality, and what to expect for the next 3 days.";
        }
        else if(c.equals("coimbatore")){
            weather="Coimbatore Weather Today ... (1–3 days):. Mostly dry. Warm (max 32°C on Mon afternoon, min 20°C on Fri night). Wind will be generally light.";
        }
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet city</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>"+c.toUpperCase()+"</h1>");
            out.println("<p>"+weather +"</p>");
            out.println("</body>");
            out.println("</html>");
        } finally {            
            out.close();
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

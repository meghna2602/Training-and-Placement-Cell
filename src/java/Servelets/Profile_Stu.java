/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Kritika
 */
@WebServlet(name = "Profile_Stu", urlPatterns = {"/Profile_Stu"})
public class Profile_Stu extends HttpServlet {

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
            String first = request.getParameter("n1");
            String last = request.getParameter("n3");
            String gender = request.getParameter("gender");
            String dob = request.getParameter("dob");
            String father = request.getParameter("fn1");
            String mother = request.getParameter("mn1");
            String state = request.getParameter("state");
            String city = request.getParameter("city");
            String contact = request.getParameter("contact");
            String id = request.getParameter("id");
            String dept = request.getParameter("dept");
            String sem = request.getParameter("sem");
            String b10 = request.getParameter("b1");  
            String b12 = request.getParameter("b2");
            String bdeg = request.getParameter("b3");
            String s10 = request.getParameter("c1");
            String s12 = request.getParameter("c2");
            String sdeg = request.getParameter("p4");
            String p10 = request.getParameter("p1");
            String p12 = request.getParameter("p2");
            String pdeg = request.getParameter("p5");
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/Riders", "root","");
                Statement stmt = con.createStatement();
                String y ="insert into stu_pprofile values('"+first+" "+last+"','"+id+"','"+gender+"','"+dob+"','"+father+"','"+mother+"','"+state+"','"+city+"','"+contact+"')";       
                stmt.executeUpdate(y);
                String z ="insert into stu_aprofile values('"+id+"','"+dept+"','"+sem+"','"+b10+"','"+s10+"','"+p10+"','"+b12+"','"+s12+"','"+p12+"','"+bdeg+"','"+sdeg+"','"+pdeg+"')";
                stmt.executeUpdate(z);
                HttpSession hs = request.getSession();
                hs.setAttribute("sn",first+" "+last);
                response.sendRedirect("Apply.jsp");
            }
            catch(Exception e){
                out.println(e);
            }
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

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
@WebServlet(name = "Login_com", urlPatterns = {"/Login_com"})
public class Login_com extends HttpServlet {

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
            String email = request.getParameter("ename");
            String pswrd = request.getParameter("psw");
            String e="" , p="",n="",n1="";
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/Riders", "root","");
                Statement stmt = con.createStatement();
                String x = "(select * from com_signup where Email='"+email+"')";
                ResultSet rs =stmt.executeQuery(x);
                 
                while(rs.next())
                {
                   e= rs.getString("email");
                   p =rs.getString("otp");
                   n = rs.getString("com_name");
                }
                
                String y = "(select * from com_details where Name='"+n+"')";
                ResultSet rs1 =stmt.executeQuery(y);
                while(rs1.next()){
                    n1 = rs1.getString("name");
                }
                if(email.equals(e)&& pswrd.equals(p))
                {
                    if(n.equals(n1)){
                        HttpSession hs = request.getSession();
                        hs.setAttribute("cn",n1);
                        response.sendRedirect("Company2.jsp"); 
                    }
                    else
                        response.sendRedirect("Company.jsp");
                }
                else
                {
                    out.println("<script>alert('Incorrect email password')</script>");
                    out.print("<script>document.location='index.html#sec4';</script>");
                }
           
              }
              catch(Exception e1){
                out.println(e1);
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

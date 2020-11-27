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
@WebServlet(name = "Signup_comp", urlPatterns = {"/Signup_comp"})
public class Signup_comp extends HttpServlet {

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
            otp o1 = new otp();
            char[] otp1 = o1.generateOTP(4);
            ourmail m1 = new ourmail();
            String name = request.getParameter("cname");
            String email = request.getParameter("cemail");
            String sub = "Login Password";
            char[] sub1= {'a','b','c','d'};
            String sub2 = new String(otp1);
                      
            m1.sendmail(email,sub,sub2);  
                        
           try{
                Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/Riders", "root","");
                    Statement stmt = con.createStatement();
                    String x = "(select * from com_signup where Email='"+email+"')";
                    ResultSet rs =stmt.executeQuery(x);
                    
                    if(rs.next()){
                        out.print("<script>alert('Email already exist')</script>");
                        out.print("<script>document.location='index.html#sec4';</script>");
                    }
                    else
                    {
                        String y ="insert into com_signup values('"+name+"','"+email+"','"+sub2+"')";
                        stmt.executeUpdate(y);
                        HttpSession hs = request.getSession();
                        hs.setAttribute("cn",name);
                        response.sendRedirect("index.html#sec4");
                    }
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

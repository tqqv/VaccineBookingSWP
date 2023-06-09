/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "confirmChangePass", urlPatterns = {"/confirmChangePass"})
public class confirmChangePass extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String confirmPass = request.getParameter("vertification");
        HttpSession session = request.getSession();
        String ConfirmChangeP = (String) session.getAttribute("ConfirmChangeP");
        if (confirmPass.equals(ConfirmChangeP)) {
            response.sendRedirect("newpass.jsp");
        } else {
            request.getSession().setAttribute("wrongVerificationcP", "Wrong Verification");
            response.sendRedirect("verificationChangePass.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("verificationChangePass.jsp");

    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

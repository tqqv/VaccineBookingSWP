/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.Notification;
import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;


@WebServlet(name = "forgotPassController", urlPatterns = {"/forgotPassController"})
public class forgotPassController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet forgotPassController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet forgotPassController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
       String email = request.getParameter("email");
       UserDAO db = new UserDAO();
       User u = db.findUserByEmail(email);
        if (u != null) {
            String otp = Notification.RandGeneratedStr(4);
            new Notification("Confirm OTP Code", email, otp).sendMail();
            HttpSession session = request.getSession();
            session.setAttribute("ConfirmChangeP", otp);
            session.setAttribute("emailChangeP", email);
            request.getRequestDispatcher("confirmChangePass").forward(request, response);
        }
        else{
            request.getSession().setAttribute("WrongEmail", "Email do not found");
            response.sendRedirect("login.jsp#form2");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

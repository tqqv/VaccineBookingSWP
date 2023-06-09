/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.MD5;
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

/**
 *
 * @author DELL
 */
@WebServlet(name = "updatePass", urlPatterns = {"/updatePass"})
public class updatePass extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet updatePass</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet updatePass at " + request.getContextPath() + "</h1>");
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
        String oldPass = request.getParameter("oldPass");
        String newPass = request.getParameter("newPass");
        String reNewPass = request.getParameter("reNewPass");
        HttpSession session = request.getSession();
        UserDAO db = new UserDAO();
        MD5 md = new MD5();        
        int id = (int) session.getAttribute("id");
        User currentUser = db.findUserByID(id);
        
        if(currentUser.getPassword().equals(md.getMd5(oldPass)) && newPass.equals(reNewPass)){
            db.updateUser(newPass,currentUser.getEmail());
            request.getSession().setAttribute("changpasssucess","Password was change succesfully");
        }
        else{
            if(!newPass.equals(reNewPass)){
            request.getSession().setAttribute("conflictPass", "New pass differ repass");
        }
            if(!currentUser.getPassword().equals(md.getMd5(oldPass))){
            request.getSession().setAttribute("oldPassU","Password wrong");
        }
        
            
        }
        response.sendRedirect("editProfile.jsp#changepass");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

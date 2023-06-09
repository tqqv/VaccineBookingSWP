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
import java.sql.Date;
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
@WebServlet(name = "updateInfor", urlPatterns = {"/updateInfor"})
public class updateInfor extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet updateInfor</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet updateInfor at " + request.getContextPath() + "</h1>");
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
        MD5 md5 = new MD5();

        String name = request.getParameter("name");
        String identification = request.getParameter("identification");
        boolean gender = request.getParameter("gender").equals("true") ? true : false;
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String healthInsurance = request.getParameter("healthInsurance");
        Date dob = Date.valueOf(request.getParameter("dob"));
        UserDAO db = new UserDAO();
        // tìm xem CCCD có tồn tại chưa
        User findIdentification = db.findIdentification(identification);
        // tìm xem BHYT đã tồn tại chưa
        User findHealthInsurance = db.findHealthInsurance(healthInsurance);
        // CCCD của người đang đăng nhập tại hệ thống
        HttpSession session = request.getSession();
        int id = (int) session.getAttribute("id");
        User currentUser = db.findUserByID(id);

        if (findIdentification != null && findIdentification.getIdUser() != id) { 
                
                request.getSession().setAttribute("ExistIdentification", "Exist Identification");
            }
        if(findHealthInsurance != null && findHealthInsurance.getIdUser() != id){
            
                request.getSession().setAttribute("ExistHealthInsurance", "Exist HealthInsurance");
               
        }
        else{
            db.updateUser(id, name, identification, dob, gender, phone, email, healthInsurance);
            System.out.println(id+ name+ identification+ dob+ gender+phone+ email+ healthInsurance);
            response.sendRedirect("home.jsp");
            return;
                         }
         response.sendRedirect("editProfile.jsp#infor");   
        

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

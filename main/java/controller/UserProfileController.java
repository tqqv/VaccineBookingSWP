/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.Encrypt;
import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(urlPatterns = {"/UserProfileController"})
public class UserProfileController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet userProfile</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet userProfile at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDAO db = new UserDAO();
        try {
            HttpSession session = request.getSession();
            int id = (int) session.getAttribute("id");
            Encrypt en = new Encrypt();
            User u = db.findUserById(id);
            System.out.println("user: " + u);
            User un = new User(u.getIdUser(), u.getUsername(), u.getPassword(), en.decryptCCCDTo(u.getIdentification()), u.getDob(), u.isGender(), u.getPhone(), u.getEmail(), en.decryptCCCDTo(u.getHealthInsurance()), 1);
            System.out.print("afeter decrypt " +un.getIdentification());
            session.setAttribute("u", un);
//            String r = en.decryptCCCDTo(u.getHealthInsurance());
//            System.out.println(r);

            response.sendRedirect("user_profile.jsp#profileForm");

        } catch (Exception ex) {
            Logger.getLogger(UserProfileController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String name = request.getParameter("name");
            boolean gender = request.getParameter("gender").equals("true") ? true : false;
            Date dob = Date.valueOf(request.getParameter("dob"));
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String identification = request.getParameter("identification");
            String healthInsurance = request.getParameter("healthInsurance");
            UserDAO db = new UserDAO();
            User findIdentification = db.findIdentification(identification);
            // tìm xem BHYT đã tồn tại chưa
            User findHealthInsurance = db.findHealthInsurance(healthInsurance);
            // CCCD của người đang đăng nhập tại hệ thống
            HttpSession session = request.getSession();
            int id = (int) session.getAttribute("id");
            User currentUser = db.findUserById(id);
            if ((findIdentification != null && findIdentification.getIdUser() != id)
                    || (findHealthInsurance != null && findHealthInsurance.getIdUser() != id)) {

                if (findIdentification != null && findIdentification.getIdUser() != id) {
                    request.getSession().setAttribute("ExistIdentification", "Exist Identification");
                }
                if (findHealthInsurance != null && findHealthInsurance.getIdUser() != id) {
                    request.getSession().setAttribute("ExistHealthInsurance", "Exist HealthInsurance");
                }
            } else {
                db.updateUser(id, name, identification, dob, gender, phone, email, healthInsurance);
                request.getSession().setAttribute("updateinforsucess", "Password was change succesfully");
            }
            response.sendRedirect("userProfile");
            response.sendRedirect("user_profile.jsp#infor");
        } catch (Exception ex) {
            Logger.getLogger(UserProfileController.class.getName()).log(Level.SEVERE, null, ex);
        }
    } 

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
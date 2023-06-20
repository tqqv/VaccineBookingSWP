/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.authController;

import dal.HospitalDAO;
import dal.UserDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Hospital;
import model.User; 
  
@WebServlet(name = "loginController", urlPatterns = { "/login" })
public class loginController extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		String optionRole = request.getParameter("optionRole");

		if (optionRole.equals("optionhospital")) {
			HospitalDAO hd = new HospitalDAO();
			Hospital hospital = hd.findHospital(email, pass);
			if (hospital != null) {
				request.getSession().setAttribute("id", hospital.getIdBV());
				request.getSession().setAttribute("role", 3);
				response.sendRedirect("newHome.jsp");

			} else {
				request.getSession().setAttribute("alertMessage", "Email Or Password Wrong");
				response.sendRedirect("login.jsp#form1");
			}
		} else if (optionRole.equals("optionuser")) {
			UserDAO db = new UserDAO();
			User user = db.findUserByEmailPassword(email, pass);
			if (user != null) {
				request.getSession().setAttribute("id", user.getIdUser());
				System.out.println(user.getIdUser());
				request.getSession().setAttribute("role", user.getRole());
				if (user.getRole() == 1) {
					// 1 la user
					// 2 la admin
					response.sendRedirect("newHome.jsp");
				} else if (user.getRole() == 2) {
					response.sendRedirect("login.jsp");
				}
			} else {
				request.getSession().setAttribute("alertMessage", "Email Or Password Wrong");
				response.sendRedirect("login.jsp#form1");
			}
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
		processRequest(request, response);
	}

	@Override
	public String getServletInfo() {
		return "Short description";
	}
}

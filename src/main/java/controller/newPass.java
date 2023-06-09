/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
@WebServlet(name = "newPass", urlPatterns = { "/newPass" })
public class newPass extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {

			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Servlet newPass</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h1>Servlet newPass at " + request.getContextPath() + "</h1>");
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
		String password = request.getParameter("password");
		String cpassword = request.getParameter("cpassword");
		HttpSession session = request.getSession();
		String emailChangeP = (String) session.getAttribute("emailChangeP");
		UserDAO db = new UserDAO();
		if (password.equals(cpassword)) {
			db.updateUser(password, emailChangeP);
			request.getSession().removeAttribute("emailChangeP");
			response.sendRedirect("login.jsp");
		} else {
			response.sendRedirect("newpass.jsp");
		}
	}

	@Override
	public String getServletInfo() {
		return "Short description";
	}
}

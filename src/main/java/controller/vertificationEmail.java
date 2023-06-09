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


@WebServlet(urlPatterns = {"/vertificationEmail"})
public class vertificationEmail extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet vertificationEmail</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet vertificationEmail at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String vertification = request.getParameter("vertification");

        HttpSession session = request.getSession();
        String otp = (String) session.getAttribute("otp");
        String name = (String) session.getAttribute("name");
        String pass = (String) session.getAttribute("pass");
        String identification = (String) session.getAttribute("identification");
        boolean gender = (boolean) session.getAttribute("gender").equals("true") ? true : false;
        String phone = (String) session.getAttribute("phone");
        String email = (String) session.getAttribute("email");
        String healthInsurance = (String) session.getAttribute("healthInsurance");
        Date dob = (Date) session.getAttribute("dob");
        UserDAO db = new UserDAO();
        if (vertification.equals(otp)) {
           db.register(name, pass, identification, dob, gender, phone, email, healthInsurance, 1);
            request.getSession().setAttribute("id",(db.findUserByEmail(email)).getIdUser() );
            request.getSession().setAttribute("role", 1);
            request.getSession().removeAttribute("otp");
            request.getSession().removeAttribute("name");
            request.getSession().removeAttribute("pass");
            request.getSession().removeAttribute("identification");
            request.getSession().removeAttribute("gender");
            request.getSession().removeAttribute("phone");
            request.getSession().removeAttribute("email");
            request.getSession().removeAttribute("healthInsurance");
//System.out.println(name+ pass+ identification+ dob+ gender+ phone+ email+ healthInsurance);
            response.sendRedirect("home.jsp");
            return;

        } else {
            request.getSession().setAttribute("wrongVerification", "Wrong Verification");
            request.getRequestDispatcher("verification.jsp").forward(request, response);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//       request.getRequestDispatcher("vertification.jsp").forward(request, response);
        response.sendRedirect("verification.jsp");

        //              }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

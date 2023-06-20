package controller.authController;


import dal.Encrypt;
import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;


@WebServlet(name = "updatePass", urlPatterns = {"/updatePass"})
public class updatePassController extends HttpServlet {

 
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
        try {
            String oldPass = request.getParameter("oldPass");
            String newPass = request.getParameter("newPass");
            String reNewPass = request.getParameter("reNewPass");
            HttpSession session = request.getSession();
            UserDAO db = new UserDAO();
                Encrypt en = new Encrypt();

            int id = (int) session.getAttribute("id");
            User currentUser = db.findUserById(id);
            
            if(currentUser.getPassword().equals(en.encryptCCCDTo(oldPass)) && newPass.equals(reNewPass)){
                db.updateUser(newPass,currentUser.getEmail());
                request.getSession().setAttribute("changpasssucess","Password was change succesfully");
            }
            else{
                if(!newPass.equals(reNewPass)){
                    request.getSession().setAttribute("conflictPass", "New pass differ repass");
                }
                if(!currentUser.getPassword().equals(en.encryptCCCDTo(oldPass))){
                    request.getSession().setAttribute("oldPassU","Password wrong");
                }
                
                
            }
            response.sendRedirect("user_profile.jsp#changepass");
        } catch (Exception ex) {
            Logger.getLogger(updatePassController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
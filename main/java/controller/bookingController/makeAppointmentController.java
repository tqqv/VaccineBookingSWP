
package controller.bookingController;

import dal.AppointmentDAO;
import dal.AppointmentProvisionDAO;
import dal.VaccineProvisionDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Appointment;
@WebServlet( urlPatterns = { "/makeAppointmentController" })
public class makeAppointmentController extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        System.out.println("hello from f");
        String date = request.getParameter("date");
        String idVaccine = request.getParameter("idVaccine");
        String idHAP = request.getParameter("idHAP");
        String timeRange = request.getParameter("timeRange");

        System.out.println("idVaccine: " + idVaccine);

        System.out.println("idHospital: " + idHAP);

        System.out.println("date: " + date);

        System.out.println("timeRange: " + timeRange);
        
        HttpSession session = request.getSession(); // retrieve the session
        int userId = (int) session.getAttribute("id");
        System.out.println("hello "+userId);
        
        int idAP = AppointmentProvisionDAO.getIdByBookingInfo(idVaccine, idHAP, date, timeRange);
        int price = VaccineProvisionDAO.getPrice(idVaccine, idHAP);
        AppointmentDAO.makeAppointment(userId, userId, idAP, price);
        
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

package controller;

import dal.AppointmentDAO;
import dal.VaccineDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AppointmentByIdHospital;
import model.VaccineProvision;


public class HospitalMangerController extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            AppointmentDAO scheduleDAO = new AppointmentDAO();
            String hospitalId = "1";
            List<AppointmentByIdHospital> appointments = AppointmentDAO.getAppointmentsByHospitalId(hospitalId);

            request.setAttribute("appointments", appointments);
        } catch (SQLException ex) {
            Logger.getLogger(HospitalMangerController.class.getName()).log(Level.SEVERE, null, ex);
        }

        VaccineDAO dao = new VaccineDAO();
        String idHVP = "1";
        List<VaccineProvision> vaccineProvisions = dao.getAllVaccineProvision(idHVP);

        int totalVaccine = dao.getTotalVaccine();

        request.setAttribute("totalVaccine", totalVaccine);
        request.setAttribute("Provisions", vaccineProvisions);
        request.getRequestDispatcher("HospitalManager.jsp").forward(request, response);
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

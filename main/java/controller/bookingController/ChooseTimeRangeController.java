/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.bookingController;

import dal.AppointmentProvisionDAO;
import dal.HospitalDAO;
import dal.VaccineDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.TimeRange;

/**
 *
 * @author DELL VOSTRO 5510
 */
@WebServlet(name = "E", urlPatterns = {"/ChooseTimeRangeController"})
public class ChooseTimeRangeController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public static void main(String[] args) {
        AppointmentProvisionDAO dao = new AppointmentProvisionDAO();
        LocalDate localDate = LocalDate.of(2023, 10, 15);
        java.sql.Date date = java.sql.Date.valueOf(localDate);
        List<TimeRange> timeRanges = dao.getTimeRange(1 + "", date, "2");
        for (TimeRange timeRange : timeRanges) {
            System.out.println(timeRange);
        }

    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String nameVaccine = request.getParameter("nameVaccine");
        String nameHospital = request.getParameter("nameHospital");
        String DateAp = request.getParameter("date");

        AppointmentProvisionDAO dao = new AppointmentProvisionDAO();

        LocalDate localDate = LocalDate.of(Integer.parseInt(DateAp.split("-")[0]), Integer.parseInt(DateAp.split("-")[1]), Integer.parseInt(DateAp.split("-")[2]));
//        LocalDate localDate = LocalDate.of(2023, 10, 15);

        java.sql.Date date = java.sql.Date.valueOf(localDate);
        int idVaccine = VaccineDAO.getIdVacByName(nameVaccine);
        int idHAP = HospitalDAO.getIdHByName(nameHospital);
        String idHAPt = Integer.toString(idHAP);
        List<TimeRange> timeRanges = dao.getTimeRange(idHAP + "", date, idVaccine + "");

        ArrayList<String> Dates = new ArrayList<>();
        Dates.add(DateAp);

        request.setAttribute("idVaccine", idVaccine);
        request.setAttribute("idHAP", idHAP);
        request.setAttribute("Dates", Dates);
        request.setAttribute("timeRanges", timeRanges);
        request.getRequestDispatcher("/Booking/3.jsp").forward(request, response);
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
    }// </editor-fold>

}

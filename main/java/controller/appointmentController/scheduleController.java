
package controller.appointmentController;

import dal.HospitalDAO;
import dal.TimeRangeDAO;
import dal.VaccineDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Hospital;
import model.Vaccine;
import model.TimeRange;


public class scheduleController extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        TimeRangeDAO dao = new TimeRangeDAO();
        VaccineDAO vdao = new VaccineDAO();
        HospitalDAO Hdao = new HospitalDAO();
        
        List<TimeRange> timeRange = dao.getTimeRange();
        List<Vaccine> list = vdao.getAllVaccine();
        List<Hospital> listH = Hdao.getAllHospital();
        
        request.setAttribute("timeRange", timeRange);
        request.setAttribute("listVc", list);
        request.setAttribute("listH", listH);
        request.getRequestDispatcher("schedule.jsp").forward(request, response);
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

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.HospitalDAO;
import dal.VaccineDAO;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Hospital;
import model.VaccineProvision;


public class AdminMangerController extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        VaccineDAO dao = new VaccineDAO();
        HospitalDAO daoH = new HospitalDAO();
        
        try {
            List<VaccineProvision> vaccineList = dao.getAllVaccineWithHospital();
            request.setAttribute("vaccineList", vaccineList);
        } catch (Exception ex) {
            Logger.getLogger(AdminMangerController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        List<Hospital> listH = daoH.getAllHospital();
        
        request.setAttribute("listH", listH);
        request.getRequestDispatcher("AdminManager.jsp").forward(request, response);
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

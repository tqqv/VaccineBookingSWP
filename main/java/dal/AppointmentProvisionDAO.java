package dal;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import model.AppointmentProvision;
import model.TimeRange;

/**
 *
 * @author DELL VOSTRO 5510
 */
public class AppointmentProvisionDAO {

    static Connection conn = null;
    static PreparedStatement ps = null;
    static ResultSet rs = null;

    public static List<TimeRange> getTimeRange(String idHAP, java.sql.Date date, String idVaccine) {
        List<TimeRange> TimeRange = new ArrayList<>();

        String query = "SELECT *\n"
                + "FROM appointment_provision\n"
                + "INNER JOIN time_range ON idTimeRangeAP = idTimeRange\n"
                + "WHERE idHAP = ? AND appointmentDateAt = ? AND idVaccineAP = ?";

        try {
            conn = new DBContext().getConnect();
            ps = conn.prepareStatement(query);
            ps.setInt(1, Integer.parseInt(idHAP));
            ps.setDate(2, date);
            ps.setInt(3, Integer.parseInt(idVaccine));

            rs = ps.executeQuery();
            while (rs.next()) {

                // Thêm các cột còn thiếu trong câu truy vấn vào constructor của đối tượng Appointment
                TimeRange.add(new TimeRange(
                        rs.getInt(5),
                        rs.getTime(8),
                        rs.getTime(9)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return TimeRange;
    }

    public static List<Date> getDate(String idHAP) {
        List<Date> appointmentDates = new ArrayList<>();

        String query = "SELECT DISTINCT appointmentDateAt\n"
                + "FROM appointment_provision WHERE idHAP = ?\n"
                + "ORDER BY appointmentDateAt ASC;";

        try {
            conn = new DBContext().getConnect();
            ps = conn.prepareStatement(query);
            ps.setString(1, idHAP);
            rs = ps.executeQuery();
            while (rs.next()) {
                Date appointmentDate = rs.getDate("appointmentDateAt");
                appointmentDates.add(appointmentDate);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return appointmentDates;
    }
    
    public static List<Date> getDateByIdHosAndVac(String idHAP, int idVac) {
        List<Date> appointmentDates = new ArrayList<>();

        String query = "SELECT DISTINCT appointmentDateAt\n"
                + "FROM appointment_provision WHERE idHAP = ? and idVaccineAP = ?\n"
                + "ORDER BY appointmentDateAt ASC;";

        try {
            conn = new DBContext().getConnect();
            ps = conn.prepareStatement(query);
            ps.setString(1, idHAP);
            ps.setInt(2, idVac);
            rs = ps.executeQuery();
            while (rs.next()) {
                Date appointmentDate = rs.getDate("appointmentDateAt");
                appointmentDates.add(appointmentDate);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return appointmentDates;
    }

    public static void main(String[] args) {
        AppointmentProvisionDAO dao = new AppointmentProvisionDAO();

        String idHAP = "1";
        int idVaccineAP = 2;
//        List<Date> Date = AppointmentProvisionDAO.getDate(idHAP);
//
//        for (Date ap : Date) {
//            System.out.println(ap);
//        }

//        LocalDate localDate = LocalDate.of(2023, 10, 13);
//        java.sql.Date date = java.sql.Date.valueOf(localDate);
//        List<TimeRange> timeRanges = dao.getTimeRange(idHAP, date, "2");

//        for (TimeRange timeRange : timeRanges) {
//            // Perform desired operations with the timeRange object
//            System.out.println(timeRange.getStartTime());
//            System.out.println(timeRange.getEndTime());
//        }
        System.out.println(getDateByIdHosAndVac(idHAP, idVaccineAP));
    }

    public static int getIdByBookingInfo(String idVaccine, String idHAP, String date, String timeRange) {
    String query = "SELECT idAppointmentProvision FROM Appointment_Provision WHERE idHAP = ?  AND appointmentDateAt = ? AND idVaccineAP = ? AND idTimeRangeAP = ?";
    try {
        conn = new DBContext().getConnect();
        ps = conn.prepareStatement(query);
        ps.setInt(1, Integer.parseInt(idHAP));
        ps.setInt(3, Integer.parseInt(idVaccine));

        ps.setInt(4, Integer.parseInt(timeRange));
        LocalDate localDate = LocalDate.of(Integer.parseInt(date.split("-")[0]), Integer.parseInt(date.split("-")[1]), Integer.parseInt(date.split("-")[2]));
        java.sql.Date dateSQL = java.sql.Date.valueOf(localDate);
        ps.setDate(2, dateSQL);

        rs = ps.executeQuery();
        if (rs.next()) {
            return rs.getInt("idAppointmentProvision");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return -1;
}

    
}


package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Appointment;

public class AppointmentDAO {

	static Connection conn = null;
	static PreparedStatement ps = null;
	static ResultSet rs = null;

	// Get Appointment by idUsers
	public List<Appointment> getAppointments(String userId) {
		List<Appointment> appointments = new ArrayList<>();

		String query = "SELECT a.idUserVaccineA, u.username, v.name AS vaccine_name, h.name AS hospital_name, "
				+ "a.price, u.gender, ap.appointmentDateAt AS date, tr.startAt, tr.endAt " + "FROM appointment a "
				+ "JOIN [user] u ON a.idUserVaccineA = u.idUser "
				+ "JOIN appointment_provision ap ON a.idAppoinmentProvisionA = ap.idAppointmentProvision "
				+ "JOIN vaccine v ON ap.idVaccineAP = v.idVaccine " + "JOIN hospital h ON ap.idHAP = h.idH "
				+ "JOIN time_range tr ON ap.idTimeRangeAP = tr.idTimeRange " + "WHERE a.idUserVaccineA = ?";

		try {
			conn = new DBContext().getConnect();
			ps = conn.prepareStatement(query);
			ps.setString(1, userId);
			rs = ps.executeQuery();
			while (rs.next()) {
				appointments.add(new Appointment(rs.getInt("idUserVaccineA"), rs.getString("username"),
						rs.getString("vaccine_name"), rs.getString("hospital_name"), rs.getDouble("price"),
						rs.getString("gender"), rs.getString("date"), rs.getString("startAt"), rs.getString("endAt")));
			}
		} catch (Exception e) {
			// Xử lý ngoại lệ tại đây (ví dụ: ghi log, ném ngoại lệ hoặc thông báo lỗi)
		}

		return appointments;
	}

	// Get Appointment by idHospital
	public static List<Appointment> getAppointmentsByHospitalId(String hospitalId) {
		List<Appointment> appointmentsByH = new ArrayList<>();

		String query = "SELECT a.idUserVaccineA, u.username, v.name AS vaccine_name, h.name AS hospital_name, "
				+ "a.price, u.gender, ap.appointmentDateAt AS date, tr.startAt, tr.endAt " + "FROM appointment a "
				+ "JOIN [user] u ON a.idUserVaccineA = u.idUser "
				+ "INNER JOIN appointment_provision ap ON a.idAppoinmentProvisionA = ap.idAppointmentProvision "
				+ "INNER JOIN vaccine v ON ap.idVaccineAP = v.idVaccine " + "INNER JOIN hospital h ON ap.idHAP = h.idH "
				+ "INNER JOIN time_range tr ON ap.idTimeRangeAP = tr.idTimeRange " + "WHERE h.idH = ?";

		try {
			conn = new DBContext().getConnect();
			ps = conn.prepareStatement(query);
			ps.setString(1, hospitalId);
			rs = ps.executeQuery();
			while (rs.next()) {
				appointmentsByH.add(new Appointment(rs.getInt("idUserVaccineA"), rs.getString("username"),
						rs.getString("vaccine_name"), rs.getString("hospital_name"), rs.getDouble("price"),
						rs.getString("gender"), rs.getString("date"), rs.getString("startAt"), rs.getString("endAt")));
			}
		} catch (Exception e) {
			// Xử lý ngoại lệ tại đây (ví dụ: ghi log, ném ngoại lệ hoặc thông báo lỗi)
		} 
		return appointmentsByH;
	}
	
	public static void makeAppointment(int idUserVaccineA, int idUserBooked, int idAP, int price) {
		String query = "INSERT INTO appointment(idUserVaccineA, idUserBookedA, idAppoinmentProvisionA, price) values (?, ?, ?, ?)";
	    try {
	        conn = new DBContext().getConnect();
	        ps = conn.prepareStatement(query);
	        ps.setInt(1, idUserVaccineA);
	        ps.setInt(2, idUserBooked);
	        ps.setInt(3, idAP);
	        ps.setDouble(4, price+.0);
	        ps.executeUpdate();
	      
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	}

	public static void main(String[] args) {
		AppointmentDAO appointmentDAO = new AppointmentDAO();
		

//		for (Appointment a : appointmentDAO.getAppointments("1003")) {
//			System.out.println(a);
//		}
//		
//		for (Appointment a : appointmentDAO.getAppointmentsByHospitalId("2")) {
//			System.out.println(a);
//			
//		}
//        String hospitalId = "1";
//        try {
//            List<Appointment> appointments = scheduleDAO.getAppointmentsByHospitalId(hospitalId);
//            for (Appointment appointment : appointments) {
//                System.out.println("Appointment ID: " + appointment.getIdUserVaccineA());
//                System.out.println("Username: " + appointment.getUsername());
//                System.out.println("Vaccine Name: " + appointment.getVaccineName());
//                System.out.println("Hospital Name: " + appointment.getHospitalName());
//                System.out.println("Price: " + appointment.getPrice());
//                System.out.println("Gender: " + appointment.getGender());
//                System.out.println("Date: " + appointment.getDate());
//                System.out.println("Start Time: " + appointment.getStartAt());
//                System.out.println("End Time: " + appointment.getEndAt());
//                System.out.println("-----------------------------------------");
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
	}
}

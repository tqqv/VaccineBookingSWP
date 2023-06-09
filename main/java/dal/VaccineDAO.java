package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.*;
import java.sql.SQLException;
import java.util.*;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import model.Vaccine;
import model.VaccineProvision;

public class VaccineDAO extends DBContext {

	public static int getIdVacByIdAP(int int1) {
		int idVaccine = -1;
		String getIdSql = "Select [idVaccineAP] from [vaccine].[dbo].[appointment_provision] where [idAppointmentProvision] = "
				+ int1;
		try (Connection conn = getConnect()) {
			PreparedStatement stmt = conn.prepareStatement(getIdSql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				idVaccine = rs.getInt(1);
				return idVaccine;
			}
		} catch (Exception ex) {
			Logger.getLogger(VaccineDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		// TODO Auto-generated method stub
		return idVaccine;
	}

	public static java.sql.Date getVacTimeByIdAP(int int1) {
		java.sql.Date date = null;
		String getIdSql = "Select [appointmentDateAt] from [vaccine].[dbo].[appointment_provision] where [idAppointmentProvision] = "
				+ int1;
		try (Connection conn = getConnect()) {
			PreparedStatement stmt = conn.prepareStatement(getIdSql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				date = rs.getDate(1);
				return date;
			}
		} catch (Exception ex) {
			Logger.getLogger(VaccineDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		// TODO Auto-generated method stub
		return date;
	}

	public static int getIdHosByIdAP(int int1) {
		// TODO Auto-generated method stub
		int hos = -1;
		String getIdHosSql = "Select [idHAP] from [vaccine].[dbo].[appointment_provision] where [idAppointmentProvision] = "
				+ int1;
		try (Connection conn = getConnect()) {
			PreparedStatement stmt = conn.prepareStatement(getIdHosSql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				hos = rs.getInt(1);
				return hos;
			}
		} catch (Exception ex) {
			Logger.getLogger(VaccineDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		// TODO Auto-generated method stub
		return hos;
	}


    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Vaccine> getAllVaccine() {
        List<Vaccine> list = new ArrayList<>();
        String query = "select * from vaccine";
        try {
            conn = new DBContext().getConnect();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Vaccine(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<VaccineProvision> getVaccineListwithHospital() throws SQLException, Exception {
        List<VaccineProvision> vaccines = new ArrayList<>();

        String query = "SELECT vp.idVaccineVP AS id, v.name AS name, v.detail AS detail, vp.pricePerService AS price, h.name AS hospital "
                + "FROM vaccine_provision vp "
                + "JOIN vaccine v ON vp.idVaccineVP = v.idVaccine "
                + "JOIN hospital h ON vp.idHVP = h.idH";

        try {
            conn = new DBContext().getConnect();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String detail = rs.getString("detail");
                double price = rs.getDouble("price");
                String hospital = rs.getString("hospital");

                VaccineProvision vaccine = new VaccineProvision(id, name, detail, price, name);
                vaccines.add(vaccine);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
        }

        return vaccines;
    }

    public List<VaccineProvision> getVaccinePerHospital(String userId) throws SQLException {
        List<VaccineProvision> provision = new ArrayList<>();

        String query = "SELECT a.idUserVaccineA, u.username, v.name AS vaccine_name, h.name AS hospital_name, "
                + "a.price, u.gender, ap.appointmentDateAt AS date, tr.startAt, tr.endAt "
                + "FROM appointment a "
                + "JOIN [user] u ON a.idUserVaccineA = u.idUser "
                + "JOIN appointment_provision ap ON a.idAppoinmentProvisionA = ap.idAppointmentProvision "
                + "JOIN vaccine v ON ap.idVaccineAP = v.idVaccine "
                + "JOIN hospital h ON ap.idHAP = h.idH "
                + "JOIN time_range tr ON ap.idTimeRangeAP = tr.idTimeRange "
                + "WHERE a.idUserVaccineA = ?";

        try {
            conn = new DBContext().getConnect();
            ps = conn.prepareStatement(query);
            ps.setString(1, userId);
            rs = ps.executeQuery();
            while (rs.next()) {
                provision.add(new VaccineProvision(rs.getInt("idVaccine"), rs.getString("name"),
                        rs.getString("detail"), rs.getDouble("pricePerService"), rs.getString("nameH")));
            }
        } catch (Exception e) {
            // Xử lý ngoại lệ tại đây (ví dụ: ghi log, ném ngoại lệ hoặc thông báo lỗi)
        } finally {
            // Đảm bảo đóng các tài nguyên
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return provision;
    }

    public List<VaccineProvision> getAllVaccineProvision(String idHVP) {
        List<VaccineProvision> list = new ArrayList<>();
        String query = "SELECT v.idVaccine, v.name, v.detail, vp.pricePerService "
                + "FROM vaccine_provision vp "
                + "JOIN vaccine v ON vp.idVaccineVP = v.idVaccine "
                + "WHERE vp.idHVP = ?";

        try {
            conn = new DBContext().getConnect();
            ps = conn.prepareStatement(query);
            ps.setString(1, idHVP);
            rs = ps.executeQuery();

            while (rs.next()) {
                int idVaccine = rs.getInt(1);
                String name = rs.getString(2);
                String detail = rs.getString(3);
                double pricePerService = rs.getDouble(4);

                VaccineProvision vaccineProvision = new VaccineProvision(idVaccine, name, detail, pricePerService, name);
                list.add(vaccineProvision);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResources();
        }

        return list;
    }

    private void closeResources() {
        try {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int getTotalVaccine() {
        String query = "select count(*) from vaccine";
        try {
            conn = new DBContext().getConnect();             //Mo ket noi voi SQL sever
            ps = conn.prepareStatement(query);                  //Chuyen cau lenh o Query vao
            rs = ps.executeQuery();                             //Chay cau lenh Query
            //Lay du lieu o "rs" dua vao "list"
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public void insertVaccine(String name, String detail) {
        String query = "INSERT INTO vaccine (name, detail)\n"
                + "VALUES (?,?);";
        try {
            conn = new DBContext().getConnect();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, detail);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void updateVaccine(int idVaccine, String name, String detail) {
        String query = "UPDATE vaccine "
                + "SET name = ?, detail = ? "
                + "WHERE idVaccine = ?";
        try {
            conn = new DBContext().getConnect(); // mở kết nối với SQL server
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, detail);
            ps.setInt(3, idVaccine);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteVaccine(String dvid) {
        String query = "DELETE FROM vaccine WHERE idVaccine = ?";
        try {
            conn = new DBContext().getConnect();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, dvid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Vaccine> searchByName(String txtSearch) {
        List<Vaccine> list = new ArrayList<>();
        String query = "select * from vaccine\n"
                + "where [name] like ?";
        try {
            conn = new DBContext().getConnect();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Vaccine(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Vaccine> getPage(int numPage) {
        List<Vaccine> list = new ArrayList<>();
        String query = "select * from vaccine order by idVaccine offset ? ROWS FETCH next 5 ROWS only;";
        try {
            conn = new DBContext().getConnect();             //Mo ket noi voi SQL sever
            ps = conn.prepareStatement(query);                  //Chuyen cau lenh o Query vao
            ps.setInt(1, (numPage - 1) * 5);
            rs = ps.executeQuery();                             //Chay cau lenh Query
            while (rs.next()) {
                list.add(new Vaccine(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }

	public static void main(String[] args) {
//		System.out.println(getIdVacFrIdAP(2));
//		System.out.println(getVacTimeByIdAP(2));
		System.out.println(getIdHosByIdAP(2));
	}

}

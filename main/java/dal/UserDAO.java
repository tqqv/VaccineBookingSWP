package dal;

import java.sql.*;
import java.sql.Date;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

import model.User;

public class UserDAO extends DBContext {
	Connection conn = null;
	MD5 md5 = new MD5();
	PreparedStatement ps = null;
	ResultSet rs = null;

	public List<User> getAllUser() {
		List<User> list = new ArrayList<>();
		String sql = "select * from [user]";
//        PreparedStatement stm = conn.prepareCall(sql);
//        ResultSet rs = stm.executeQuery();s
		try {
			conn = new DBContext().getConnect();// mo ket noi voi sql
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5),
						rs.getBoolean(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getInt(10)));

			}
		} catch (Exception e) {
		}
		return list;
	}

	public User findUserByEmail(String email) {
		String sql = "select * from [user] where [email] = ? ";
		try (Connection con = getConnect()) {
			System.out.println(con);
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				User s = new User();
				s.setIdUser(rs.getInt("idUser"));
				s.setUsername(rs.getString("username"));
				s.setPassword(rs.getString("password"));
				s.setIdentification(rs.getString("identification"));
				s.setDob(rs.getDate("dob"));
				s.setGender(rs.getBoolean("gender"));
				s.setPhone(rs.getString("phone"));
				s.setEmail(rs.getString("email"));
				s.setHealthInsurance("healthInsurance");
				s.setRole(rs.getInt("role"));
				return s;
			}
			return null;
		} catch (SQLException ex) {
			Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return null;
	}

	public User findUser(String email, String password) {
		try {
			String sql = "select * from [user] where [email] = ? and [password] = ?";
			conn = new DBContext().getConnect();
			PreparedStatement stm = conn.prepareStatement(sql);
			stm.setString(1, email);
			stm.setString(2, md5.getMd5(password));
			ResultSet rs = stm.executeQuery();
			if (rs.next()) {
				User s = new User();
				s.setIdUser(rs.getInt("idUser"));
				s.setUsername(rs.getString("username"));
				s.setPassword(rs.getString("password"));
				s.setIdentification(rs.getString("identification"));
				s.setDob(rs.getDate("dob"));
				s.setGender(rs.getBoolean("gender"));
				s.setPhone(rs.getString("phone"));
				s.setEmail(rs.getString("email"));
				s.setHealthInsurance("healthInsurance");
				s.setRole(rs.getInt("role"));
				return s;
			}
		} catch (SQLException ex) {
			Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return null;
	}

	public User findUser(int userId, String password) {
		try {
			String sql = "select * from [user] where [idUser] = ? and [password] = ?";
			conn = new DBContext().getConnect();
			PreparedStatement stm = conn.prepareStatement(sql);
			stm.setInt(1, userId);
			stm.setString(2, md5.getMd5(password));
			ResultSet rs = stm.executeQuery();
			if (rs.next()) {
				User s = new User();
				s.setIdUser(rs.getInt("idUser"));
				s.setUsername(rs.getString("username"));
				s.setPassword(rs.getString("password"));
				s.setIdentification(rs.getString("identification"));
				s.setDob(rs.getDate("dob"));
				s.setGender(rs.getBoolean("gender"));
				s.setPhone(rs.getString("phone"));
				s.setEmail(rs.getString("email"));
				s.setHealthInsurance("healthInsurance");
				s.setRole(rs.getInt("role"));
				return s;
			}
		} catch (SQLException ex) {
			Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return null;
	}

	public User findUser(int userId) {
		try {
			String sql = "select * from [user] where [idUser] = ?";
			conn = new DBContext().getConnect();
			PreparedStatement stm = conn.prepareStatement(sql);
			stm.setInt(1, userId);
			ResultSet rs = stm.executeQuery();
			if (rs.next()) {
				User s = new User();
				s.setIdUser(rs.getInt("idUser"));
				s.setUsername(rs.getString("username"));
				s.setPassword(rs.getString("password"));
				s.setIdentification(rs.getString("identification"));
				s.setDob(rs.getDate("dob"));
				s.setGender(rs.getBoolean("gender"));
				s.setPhone(rs.getString("phone"));
				s.setEmail(rs.getString("email"));
				s.setHealthInsurance("healthInsurance");
				s.setRole(rs.getInt("role"));
				return s;
			}
		} catch (SQLException ex) {
			Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return null;
	}

	public User findIdentification(String identification) {
		try {
			String sql = "select * from [user] where [identification] = ?";
			conn = new DBContext().getConnect();
			PreparedStatement stm = conn.prepareStatement(sql);
			stm.setString(1, md5.getMd5(identification));
			ResultSet rs = stm.executeQuery();
			if (rs.next()) {
				User s = new User();
				s.setIdUser(rs.getInt("idUser"));
				s.setUsername(rs.getString("username"));
				s.setPassword(rs.getString("password"));
				s.setIdentification(rs.getString("identification"));
				s.setDob(rs.getDate("dob"));
				s.setGender(rs.getBoolean("gender"));
				s.setPhone(rs.getString("phone"));
				s.setEmail(rs.getString("email"));
				s.setHealthInsurance("healthInsurance");
				s.setRole(rs.getInt("role"));
				return s;
			}
		} catch (SQLException ex) {
			Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return null;
	}

	public User findPhone(String phone) {
		try {
			String sql = "select * from [user] where [phone] = ?";
			conn = new DBContext().getConnect();
			PreparedStatement stm = conn.prepareStatement(sql);
			stm.setString(1, phone);
			ResultSet rs = stm.executeQuery();
			if (rs.next()) {
				User s = new User();
				s.setIdUser(rs.getInt("idUser"));
				s.setUsername(rs.getString("username"));
				s.setPassword(rs.getString("password"));
				s.setIdentification(rs.getString("identification"));
				s.setDob(rs.getDate("dob"));
				s.setGender(rs.getBoolean("gender"));
				s.setPhone(rs.getString("phone"));
				s.setEmail(rs.getString("email"));
				s.setHealthInsurance("healthInsurance");
				s.setRole(rs.getInt("role"));
				return s;
			}
		} catch (SQLException ex) {
			Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return null;
	}

	public User findHealthInsurance(String healthInsurance) {
		try {
			String sql = "select * from [user] where [healthInsurance] = ?";
			conn = new DBContext().getConnect();
			PreparedStatement stm = conn.prepareStatement(sql);
			stm.setString(1, md5.getMd5(healthInsurance));
			ResultSet rs = stm.executeQuery();
			if (rs.next()) {
				User s = new User();
				s.setIdUser(rs.getInt("idUser"));
				s.setUsername(rs.getString("username"));
				s.setPassword(rs.getString("password"));
				s.setIdentification(rs.getString("identification"));
				s.setDob(rs.getDate("dob"));
				s.setGender(rs.getBoolean("gender"));
				s.setPhone(rs.getString("phone"));
				s.setEmail(rs.getString("email"));
				s.setHealthInsurance("healthInsurance");
				s.setRole(rs.getInt("role"));
				return s;
			}
		} catch (SQLException ex) {
			Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return null;
	}

	public User findUserByID(int id) {
		try {
			String sql = "select * from [user] where [idUser] = ?";
			conn = new DBContext().getConnect();
			PreparedStatement stm = conn.prepareStatement(sql);
			stm.setInt(1, id);
			ResultSet rs = stm.executeQuery();
			if (rs.next()) {
				User s = new User();
				s.setIdUser(rs.getInt("idUser"));
				s.setUsername(rs.getString("username"));
				s.setPassword(rs.getString("password"));
				s.setIdentification(rs.getString("identification"));
				s.setDob(rs.getDate("dob"));
				s.setGender(rs.getBoolean("gender"));
				s.setPhone(rs.getString("phone"));
				s.setEmail(rs.getString("email"));
				s.setHealthInsurance("healthInsurance");
				s.setRole(rs.getInt("role"));
				return s;
			}
		} catch (SQLException ex) {
			Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return null;
	}

	public int register(String name, String password, String identification, Date dob, boolean gender, String phone,
			String email, String healthInsurance, int role) {
		String pass = md5.getMd5(password);
		String identificationmd5 = md5.getMd5(identification);
		String healthInsurancemd5 = md5.getMd5(healthInsurance);
		try {
			String sql = "INSERT INTO [dbo].[user]\n" + "           ([username]\n" + "           ,[password]\n"
					+ "           ,[identification]\n" + "           ,[dob]\n" + "           ,[gender]\n"
					+ "           ,[phone]\n" + "           ,[email]\n" + "           ,[healthInsurance]\n"
					+ "           ,[role])\n" + "     VALUES\n" + "           (?\n" + "           ,?\n"
					+ "           ,?\n" + "           ,?\n" + "           ,?\n" + "           ,?\n" + "           ,?\n"
					+ "           ,?\n" + "           ,?)";
			conn = new DBContext().getConnect();
			PreparedStatement stm = conn.prepareStatement(sql);
			stm.setString(1, name);
			stm.setString(2, pass);
			stm.setString(3, identificationmd5);
			stm.setDate(4, dob);
			stm.setBoolean(5, gender);
			stm.setString(6, phone);
			stm.setString(7, email);
			stm.setString(8, healthInsurancemd5);
			stm.setInt(9, 1);
			stm.executeUpdate();
		} catch (Exception ex) {
			Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
			return 0;
		}
		return 1;
	}

	public int updateUser(String password, String email) {
		String pass = md5.getMd5(password);
		try {
			String sql = "UPDATE [dbo].[user]\n" + "SET [password] = ?\n" + "WHERE [user].email =?";
			conn = new DBContext().getConnect();
			PreparedStatement stm = conn.prepareCall(sql);
			stm.setString(1, pass);
			stm.setString(2, email);
			stm.executeUpdate();
		} catch (SQLException ex) {
			Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
			return 0;
		}
		return 1;
	}

	public int updateUser(int idUser, String name, String identification, Date dob, boolean gender, String phone,
			String email, String healthInsurance) {
		String identificationmd5 = md5.getMd5(identification);
		String healthInsurancemd5 = md5.getMd5(healthInsurance);
		try {
			String sql = "UPDATE [dbo].[user]\n" + "   SET [username] = ?\n" + "      ,[identification] = ?\n"
					+ "      ,[dob] = ?\n" + "      ,[gender] = ?\n" + "      ,[phone] = ?\n" + "      ,[email] = ?\n"
					+ "      ,[healthInsurance] = ?\n" + "WHERE [user].idUser =?";
			conn = new DBContext().getConnect();
			PreparedStatement stm = conn.prepareCall(sql);
			stm.setString(1, name);
			stm.setString(2, identificationmd5);
			stm.setDate(3, dob);
			stm.setBoolean(4, gender);
			stm.setString(5, phone);
			stm.setString(6, email);
			stm.setString(7, healthInsurancemd5);
			stm.setInt(8, idUser);
			stm.executeUpdate();
		} catch (SQLException ex) {
			Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
			return 0;
		}
		return 1;
	}

	
	public static void main(String[] args) {
		UserDAO us = new UserDAO();

		List<User> u = us.getAllUser();
		System.out.println(u);
	}
}
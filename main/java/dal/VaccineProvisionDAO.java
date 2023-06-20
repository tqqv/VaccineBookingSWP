
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.VaccineProvision;

/**
 *
 * @author DELL VOSTRO 5510
 */
public class VaccineProvisionDAO {

    static Connection conn = null;
    static PreparedStatement ps = null;
    static ResultSet rs = null;

    public static int getPrice(String idVaccine, String idHAP) {

        String query = "SELECT pricePerService FROM Vaccine_Provision WHERE idVaccineVP= ? AND idHVP = ? ";
        try {
            conn = new DBContext().getConnect();
            ps = conn.prepareStatement(query);
            ps.setInt(1, Integer.parseInt(idVaccine));
            ps.setInt(2, Integer.parseInt(idHAP));

            rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt("pricePerService");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;

    }

    public List<VaccineProvision> getAllVaccineWithHospital(String idVc) {
        List<VaccineProvision> list = new ArrayList<>();
        String query = "SELECT vp.idVaccineVP AS id, v.name AS name, v.detail AS detail, vp.pricePerService AS price, h.name AS hospital \n"
                + "                FROM vaccine_provision vp \n"
                + "                JOIN vaccine v ON vp.idVaccineVP = v.idVaccine \n"
                + "                JOIN hospital h ON vp.idHVP = h.idH\n"
                + "				WHERE idVaccine = ?";

        try {
            conn = new DBContext().getConnect();
            ps = conn.prepareStatement(query);
            ps.setString(1, idVc);
            rs = ps.executeQuery();

            while (rs.next()) {
                int idVaccine = rs.getInt(1);
                String name = rs.getString(2);
                String detail = rs.getString(3);
                double pricePerService = rs.getDouble(4);
                String nameH = rs.getString(5);

                VaccineProvision vaccineProvision = new VaccineProvision(idVaccine, name, detail, pricePerService, nameH);
                list.add(vaccineProvision);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
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
        }

        return list;
    }

    public static void main(String[] args) {
        VaccineProvisionDAO vpDAO = new VaccineProvisionDAO();
        List<VaccineProvision> list = vpDAO.getAllVaccineWithHospital("2");
//        for (VaccineProvision vp : list) {
//            System.out.println(vp);
//        }
System.out.println(getPrice("2", "1"));
//        List<VaccineProvision> listH = vpDAO.getAllVaccineWithHospital("5");
//        for (VaccineProvision vp : listH) {
//            System.out.println(vp);
//        }
    }
}

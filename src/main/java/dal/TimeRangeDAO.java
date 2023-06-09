package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.TimeRange;

public class TimeRangeDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<TimeRange> getTimeRange() {
        List<TimeRange> list = new ArrayList<>();
        String query = "select * from time_range";
        try {
            conn = new DBContext().getConnect();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new TimeRange(rs.getInt(1), rs.getTime(2), rs.getTime(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        TimeRangeDAO dao = new TimeRangeDAO();
        List<TimeRange> list = dao.getTimeRange();
        for (TimeRange o : list) {
            System.out.println(o);
        }
    }
}

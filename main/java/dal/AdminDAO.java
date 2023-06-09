package dal;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;

import model.User;

public class AdminDAO extends DBContext {

	public static ResultSet getVaccineHistoryByIdA(String idAppointment) {
		ResultSet rs = null;

		return rs;
	}


	public static void main(String[] args) throws IOException, ParseException {
		File fi = new File("C:\\vaccine\\23-05-2023-uncome.xls");
		String date = fi.getName().substring(0, 10);

	}
}

package controller.appointmentController;

import java.io.IOException;
import java.net.URLDecoder;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/UpdateAppointment")
public class UpdateAppointment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateAppointment() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String[] arr;
		String timeRanges;
		String vaccines;
		System.out.println("hello");
//		Get date + info from cookie + idBV from request obj

		Cookie cookies[] = request.getCookies();
		System.out.println("cookie length " + cookies.length);
		for (int i = 0; i < cookies.length; i++) {

			Cookie cookie = cookies[i];
			String value = URLDecoder.decode(cookie.getValue()).replaceAll("\"", "");
			System.out.println(i + " " + value);
			arr = value.split("\\|");

			if (!cookie.getValue().equalsIgnoreCase("%22%22") || !cookie.getValue().equalsIgnoreCase("CC63A143F281F7A03D491BA4029F44FF") ) {
//				1. Get idBV in session after login as hospital
//				2. handle string cookie_name => date format YY-MM-DD
//				3. loop through arrTime = (cookie.value().split("\\|")[0]) => (2 input : dateAt + idTimeRange) 
//				4. loop throush cookie.value()[1] => ( = input vaccineName + số lượng )
//				5. Insert to table appointment_provision and auto generate idAppointmentProvision

//				1	
		        HttpSession session = request.getSession(); // retrieve the session
		        int hosId = (int) session.getAttribute("id");
		        System.out.println("hos id: " + hosId);
//				2 	"month_6date_1" 
				// Split the date string into its components
				String[] parts = cookie.getName().split("_");
				System.out.println("month " + parts[1]);
				System.out.println("date " + parts[2]);
				int month = Integer.parseInt(parts[1].replace("date", "")); // Extract the month number
				int date = Integer.parseInt(parts[2]); // Extract the date number
				int year = LocalDate.now().getYear(); // Get the current year
				// Create a LocalDate object from the components
				LocalDate localDate = LocalDate.of(year, month, date);
				// Convert the LocalDate object to java.sql.Date object => done
				java.sql.Date sqlDate = java.sql.Date.valueOf(localDate);

// 				3 loop over timeRanges
				timeRanges = value.split("\\|")[0];
				vaccines = value.split("\\|")[1];
				System.out.println("Start here");
				for (String time : timeRanges.split("")) {
//				4 loop over vaccines 
					for (String vacInfo : vaccines.split(",")) {
						String vacName = vacInfo.split("\\(")[0];
						String vacQuantity = vacInfo.split("\\(")[1].replace(")", " ");
						if (!time.isEmpty() && !time.contains(",") && !vacName.isEmpty() && !vacQuantity.isEmpty())
							System.out.println("idBV: null \n" + "Date: " + sqlDate.toString() + "\n"
									+ "time range code " + time + "\n" + "Vaccine name: " + vacName + "\n" + "quantiy: "
									+ vacQuantity + "\n");
						// insert on db

					}
				}
			}
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

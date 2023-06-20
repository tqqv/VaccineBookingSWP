package model;

import java.sql.Date;

public class VaccineHistory {
	   private String userName;
	   private Boolean gender;
	   private String Hospital;
	   private Date date;
	   private String vaccine;
	   private double price;

	    public VaccineHistory() {
	    }

	    public VaccineHistory(String userName, Boolean gender, String Hospital, Date date, String vaccine, double price) {
	        this.userName = userName;
	        this.gender = gender;
	        this.Hospital = Hospital;
	        this.date = date;
	        this.vaccine = vaccine;
	        this.price = price;
	    }

	    public String getUserName() {
	        return userName;
	    }

	    public void setUserName(String userName) {
	        this.userName = userName;
	    }

	    public Boolean getGender() {
	        return gender;
	    }

	    public void setGender(Boolean gender) {
	        this.gender = gender;
	    }

	    public String getHospital() {
	        return Hospital;
	    }

	    public void setHospital(String Hospital) {
	        this.Hospital = Hospital;
	    }

	    public Date getDate() {
	        return date;
	    }

	    public void setDate(Date date) {
	        this.date = date;
	    }

	    public String getVaccine() {
	        return vaccine;
	    }

	    public void setVaccine(String vaccine) {
	        this.vaccine = vaccine;
	    }

	    public double getPrice() {
	        return price;
	    }

	    public void setPrice(double price) {
	        this.price = price;
	    }

	    @Override
	    public String toString() {
	        return "VaccineHistory{" + "userName=" + userName + ", gender=" + gender + ", Hospital=" + Hospital + ", date=" + date + ", vaccine=" + vaccine + ", price=" + price + '}';
	    }
	    

	}
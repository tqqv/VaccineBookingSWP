package model;

public class Appointment {
    private int idUserVaccineA;
    private String username;
    private String vaccineName;
    private String hospitalName;
    private double price;
    private String gender;
    private String date;
    private String startAt;
    private String endAt;

    public Appointment(int idUserVaccineA, String username, String vaccineName, String hospitalName, double price,
                       String gender, String date, String startAt, String endAt) {
        this.idUserVaccineA = idUserVaccineA;
        this.username = username;
        this.vaccineName = vaccineName;
        this.hospitalName = hospitalName;
        this.price = price;
        this.gender = gender;
        this.date = date;
        this.startAt = startAt;
        this.endAt = endAt;
    }

    public int getIdUserVaccineA() {
        return idUserVaccineA;
    }

    public String getUsername() {
        return username;
    }

    public String getVaccineName() {
        return vaccineName;
    }

    public String getHospitalName() {
        return hospitalName;
    }

    public double getPrice() {
        return price;
    }

    public String getGender() {
        return gender;
    }

    public String getDate() {
        return date;
    }

    public String getStartAt() {
        return startAt;
    }

    public String getEndAt() {
        return endAt;
    }

    @Override
    public String toString() {
        return "Appointment{" + "idUserVaccineA=" + idUserVaccineA + ", username=" + username + ", vaccineName=" + vaccineName + ", hospitalName=" + hospitalName + ", price=" + price + ", gender=" + gender + ", date=" + date + ", startAt=" + startAt + ", endAt=" + endAt + '}';
    }
    
    
}

package model;

import java.sql.Date;

public class User {

    private int idUser;
    private String username;
    private String password;
    private String identification;
    private Date dob;
    private boolean gender;
    private String phone;
    private String email;
    private String healthInsurance;
    private int role;

    public User() {
    }

    public User(int idUser, String username, String password, 
    		String identification, Date dob, 
    		boolean gender, String phone, String email,
    		String healthInsurance, int role) {
        this.idUser = idUser;
        this.username = username;
        this.password = password;
        this.identification = identification;
        this.dob = dob;
        this.gender = gender;
        this.phone = phone;
        this.email = email;
        this.healthInsurance = healthInsurance;
        this.role = role;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getIdentification() {
        return identification;
    }

    public void setIdentification(String identification) {
        this.identification = identification;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getHealthInsurance() {
        return healthInsurance;
    }

    public void setHealthInsurance(String healthInsurance) {
        this.healthInsurance = healthInsurance;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "User{" + "idUser=" + idUser + ", username=" + username + ", password=" + password + ", identification=" + identification + ", dob=" + dob + ", gender=" + gender + ", phone=" + phone + ", email=" + email + ", healthInsurance=" + healthInsurance + ", role=" + role + '}';
    }

}
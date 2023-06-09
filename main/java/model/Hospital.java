package model;

public class Hospital {
    private int idBV;
    private String name;
    private String address;
    private String email;
    private String hotline;
    private String username;
    private String password;

    public Hospital() {
    }
    
    
    
    public Hospital(int idBV, String name, String address, String email, String hotline, String username, String password) {
        this.idBV = idBV;
        this.name = name;
        this.address = address;
        this.email = email;
        this.hotline = hotline;
        this.username = username;
        this.password = password;
    }
    
    public int getIdBV() {
        return idBV;
    }
    
    public void setIdBV(int idBV) {
        this.idBV = idBV;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getAddress() {
        return address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }
    
    public String getEmail() {
        return email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getHotline() {
        return hotline;
    }
    
    public void setHotline(String hotline) {
        this.hotline = hotline;
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
    
    @Override
    public String toString() {
        return "ID: " + idBV + ", Name: " + name + ", Address: " + address + ", Email: " + email + ", Hotline: " + hotline
                + ", Username: " + username + ", Password: " + password;
    }
}


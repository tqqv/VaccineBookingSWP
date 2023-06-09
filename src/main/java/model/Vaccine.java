package model;

public class Vaccine {

    private int idVaccine;
    private String name;
    private String detail;

    public Vaccine(int idVaccine, String name, String detail) {
        this.idVaccine = idVaccine;
        this.name = name;
        this.detail = detail;
    }

    public int getIdVaccine() {
        return idVaccine;
    }

    public void setIdVaccine(int idVaccine) {
        this.idVaccine = idVaccine;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    @Override
    public String toString() {
        return "ID: " + idVaccine + ", Name: " + name + ", Detail: " + detail;
    }

}

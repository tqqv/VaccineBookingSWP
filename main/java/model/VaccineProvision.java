package model;

public class VaccineProvision {
    private int idVaccine;
    private String name;
    private String detail;
    private double pricePerService;
    private String nameH;

    public VaccineProvision() {
    }

    public VaccineProvision(int idVaccine, String name, String detail, double pricePerService, String nameH) {
        this.idVaccine = idVaccine;
        this.name = name;
        this.detail = detail;
        this.pricePerService = pricePerService;
        this.nameH = nameH;
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

    public double getPricePerService() {
        return pricePerService;
    }

    public void setPricePerService(double pricePerService) {
        this.pricePerService = pricePerService;
    }

    public String getNameH() {
        return nameH;
    }

    public void setNameH(String nameH) {
        this.nameH = nameH;
    }

    @Override
    public String toString() {
        return "VaccineProvision{" + "idVaccine=" + idVaccine + ", name=" + name + ", detail=" + detail + ", pricePerService=" + pricePerService + ", nameH=" + nameH + '}';
    }

    
}

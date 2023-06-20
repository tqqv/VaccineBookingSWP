/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import dal.TimeRangeDAO;
import java.sql.Date;
import java.sql.Time;

public class AppointmentProvision {
    private int idHAP;
    private int idVaccineAP;
    private java.sql.Date appointmentDateAt;
    private int quantity;
    private int idTimeRangeAP;
    private int idAppointmentProvision;

    public AppointmentProvision() {
    }

    public AppointmentProvision(int idHAP, int idVaccineAP, java.sql.Date appointmentDateAt, int quantity, int idTimeRangeAP, int idAppointmentProvision) {
        this.idHAP = idHAP;
        this.idVaccineAP = idVaccineAP;
        this.appointmentDateAt = appointmentDateAt;
        this.quantity = quantity;
        this.idTimeRangeAP = idTimeRangeAP;
        this.idAppointmentProvision = idAppointmentProvision;
    }

    public int getIdHAP() {
        return idHAP;
    }

    public void setIdHAP(int idHAP) {
        this.idHAP = idHAP;
    }

    public int getIdVaccineAP() {
        return idVaccineAP;
    }

    public void setIdVaccineAP(int idVaccineAP) {
        this.idVaccineAP = idVaccineAP;
    }

    public java.sql.Date getAppointmentDateAt() {
        return appointmentDateAt;
    }

    public void setAppointmentDateAt(java.sql.Date appointmentDateAt) {
        this.appointmentDateAt = appointmentDateAt;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getIdTimeRangeAP() {
        return idTimeRangeAP;
    }

    public void setIdTimeRangeAP(int idTimeRangeAP) {
        this.idTimeRangeAP = idTimeRangeAP;
    }

    public int getIdAppointmentProvision() {
        return idAppointmentProvision;
    }

    public void setIdAppointmentProvision(int idAppointmentProvision) {
        this.idAppointmentProvision = idAppointmentProvision;
    }

    public int getIdTimeRange() {
        return idTimeRangeAP;
    }

    public void setIdTimeRange(int idTimeRange) {
        this.idTimeRangeAP = idTimeRange;
    }

    @Override
    public String toString() {
        return "AppointmentProvision{" + "idHAP=" + idHAP + ", idVaccineAP=" + idVaccineAP + ", appointmentDateAt=" + appointmentDateAt + ", quantity=" + quantity + ", idTimeRangeAP=" + idTimeRangeAP + ", idAppointmentProvision=" + idAppointmentProvision + "" + ", startAt=" + "" + ", endAt=" + "" + '}';
    }


}    

    
    

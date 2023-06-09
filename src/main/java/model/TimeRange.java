package model;

import java.sql.Time;
import java.text.SimpleDateFormat;

public class TimeRange {
    private int idTimeRange;
    private Time startAt;
    private Time endAt;
    
    public TimeRange(int idTimeRange, Time startAt, Time endAt) {
        this.idTimeRange = idTimeRange;
        this.startAt = startAt;
        this.endAt = endAt;
    }
    
    public int getIdTimeRange() {
        return idTimeRange;
    }
    
    public void setIdTimeRange(int idTimeRange) {
        this.idTimeRange = idTimeRange;
    }
    
    public Time getStartAt() {
        return startAt;
    }
    
    public void setStartAt(Time startAt) {
        this.startAt = startAt;
    }
    
    public Time getEndAt() {
        return endAt;
    }
    
    public void setEndAt(Time endAt) {
        this.endAt = endAt;
    }

    @Override
    public String toString() {
        SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");
        String startAtStr = timeFormat.format(startAt);
        String endAtStr = timeFormat.format(endAt);
        return "ID: " + idTimeRange + ", Start At: " + startAtStr + ", End At: " + endAtStr;
    }
}

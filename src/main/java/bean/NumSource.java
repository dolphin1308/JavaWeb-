package bean;

public class NumSource {

    private String serialnumber;
    private String visitdate;
    private String visitnoon;
    private String visittime;
    private String state;

    public NumSource(String serialnumber, String visitdate, String visitnoon, String visittime, String state) {
        this.serialnumber = serialnumber;
        this.visitdate = visitdate;
        this.visitnoon = visitnoon;
        this.visittime = visittime;
        this.state = state;
    }

    public String getSerialnumber() {
        return serialnumber;
    }

    public void setSerialnumber(String serialnumber) {
        this.serialnumber = serialnumber;
    }

    public String getVisitdate() {
        return visitdate;
    }

    public void setVisitdate(String visitdate) {
        this.visitdate = visitdate;
    }

    public String getVisitnoon() {
        return visitnoon;
    }

    public void setVisitnoon(String visitnoon) {
        this.visitnoon = visitnoon;
    }

    public String getVisittime() {
        return visittime;
    }

    public void setVisittime(String visittime) {
        this.visittime = visittime;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}

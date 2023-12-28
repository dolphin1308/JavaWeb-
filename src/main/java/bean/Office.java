package bean;

public class Office {

    private String officename;
    private String description;
    private int doctornum;

    public Office() {
    }

    public Office(String officename, String description, int doctornum) {
        this.officename = officename;
        this.description = description;
        this.doctornum = doctornum;
    }

    public String getOfficename() {
        return officename;
    }

    public void setOfficename(String officename) {
        this.officename = officename;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getDoctornum() {
        return doctornum;
    }

    public void setDoctornum(int doctornum) {
        this.doctornum = doctornum;
    }
}

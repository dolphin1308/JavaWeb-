package bean;

public class WorkDay {

   private String wid;
   private String did;
   private String worktime;
   private String ampm;
   private String nsnum;
   private String state;

    public WorkDay() {

    }

    public String getWid() {
        return wid;
    }

    public void setWid(String wid) {
        this.wid = wid;
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    public String getWorktime() {
        return worktime;
    }

    public void setWorktime(String worktime) {
        this.worktime = worktime;
    }

    public String getAmpm() {
        return ampm;
    }

    public void setAmpm(String ampm) {
        this.ampm = ampm;
    }

    public String getNsnum() {
        return nsnum;
    }

    public void setNsnum(String nsnum) {
        this.nsnum = nsnum;
    }


    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }



    public WorkDay(String wid, String did, String worktime, String ampm, String nsnum, String state) {
        this.wid = wid;
        this.did = did;
        this.worktime = worktime;
        this.ampm = ampm;
        this.nsnum = nsnum;
        this.state = state;
    }
}

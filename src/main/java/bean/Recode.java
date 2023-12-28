package bean;

public class Recode {

    private String rid;
    private String pid;
    private String wid;
    private String did;
    private String serialnumber;
    private String visitdate;
    private String visitnoon;
    private String visittime;
    private String ordertime;
    private String state;

    public Recode(String rid, String pid, String wid, String did, String serialnumber, String visitdate, String visitnoon, String visittime, String ordertime, String state) {
        this.rid = rid;
        this.pid = pid;
        this.wid = wid;
        this.did = did;
        this.serialnumber = serialnumber;
        this.visitdate = visitdate;
        this.visitnoon = visitnoon;
        this.visittime = visittime;
        this.ordertime = ordertime;
        this.state = state;
    }

    public String getRid() {
        return rid;
    }

    public void setRid(String rid) {
        this.rid = rid;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
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

    public String getOrdertime() {
        return ordertime;
    }

    public void setOrdertime(String ordertime) {
        this.ordertime = ordertime;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}

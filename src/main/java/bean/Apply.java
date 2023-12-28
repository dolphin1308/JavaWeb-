package bean;

public class Apply {
    private String aid;
    private String did;
    private String dname;
    private String wid;
    private String reason;
    private String applyTime;
    private String state;
    private String request;

    public Apply(String aid, String did, String dname, String wid, String reason, String applyTime, String state,String request) {
        this.aid = aid;
        this.did = did;
        this.dname = dname;
        this.wid = wid;
        this.reason = reason;
        this.applyTime = applyTime;
        this.state = state;
        this.request = request;
    }

    public String getRequest() {
        return request;
    }

    public void setRequest(String request) {
        this.request = request;
    }

    public String getAid() {
        return aid;
    }

    public void setAid(String aid) {
        this.aid = aid;
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
    }

    public String getWid() {
        return wid;
    }

    public void setWid(String wid) {
        this.wid = wid;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getApplyTime() {
        return applyTime;
    }

    public void setApplyTime(String applyTime) {
        this.applyTime = applyTime;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}

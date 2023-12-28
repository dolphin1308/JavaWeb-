package bean;

public class Integrity {
    private String id;
    private String pid;
    private String dname;
    private String office;
    private String time;
    private String reason;
    private String score;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
    }

    public String getOffice() {
        return office;
    }

    public void setOffice(String office) {
        this.office = office;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public Integrity(String id, String pid, String dname, String office, String time, String reason, String score) {
        this.id = id;
        this.pid = pid;
        this.dname = dname;
        this.office = office;
        this.time = time;
        this.reason = reason;
        this.score = score;
    }
}

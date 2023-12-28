package bean;

public class Spot {

   private String did;
   private String account;
   private String password;
   private String dname;
    private String fee;
    private String age;
    private String office;
    private String room;
    private String career;
    private String description;
    private String picpath;

    public Spot() {
    }

    public Spot(String did, String account, String password, String dname, String fee,String age, String office, String room, String career, String description, String picpath) {
        this.did = did;
        this.account = account;
        this.password = password;
        this.dname = dname;
        this.fee = fee;
        this.age = age;
        this.office = office;
        this.room = room;
        this.career = career;
        this.description = description;
        this.picpath = picpath;
    }

    public Spot(String string, String string1, String string2, String string3, String string4, String string5, String string6, String string7, String string8, String string9) {
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
    }

    public String getFee() {
        return fee;
    }

    public void setFee(String fee) {
        this.fee = fee;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getOffice() {
        return office;
    }

    public void setOffice(String office) {
        this.office = office;
    }

    public String getRoom() {
        return room;
    }

    public void setRoom(String room) {
        this.room = room;
    }

    public String getCareer() {
        return career;
    }

    public void setCareer(String career) {
        this.career = career;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPicpath() {
        return picpath;
    }

    public void setPicpath(String picpath) {
        this.picpath = picpath;
    }
}

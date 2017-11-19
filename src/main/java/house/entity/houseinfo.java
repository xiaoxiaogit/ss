package house.entity;

import java.util.Date;
//房屋信息
public class houseinfo {
   private int houseid;
   private String housedesc;
   private int typeid;
   private int monthlyrent;
   private Date publishdate;
   private housetype ht;

    public housetype getHt() {
        return ht;
    }

    public void setHt(housetype ht) {
        this.ht = ht;
    }
    public int getHouseid() {
        return houseid;
    }

    public void setHouseid(int houseid) {
        this.houseid = houseid;
    }

    public String getHousedesc() {
        return housedesc;
    }

    public void setHousedesc(String housedesc) {
        this.housedesc = housedesc;
    }

    public int getTypeid() {
        return typeid;
    }

    public void setTypeid(int typeid) {
        this.typeid = typeid;
    }

    public int getMonthlyrent() {
        return monthlyrent;
    }

    public void setMonthlyrent(int monthlyrent) {
        this.monthlyrent = monthlyrent;
    }

    public Date getPublishdate() {
        return publishdate;
    }

    public void setPublishdate(Date publishdate) {
        this.publishdate = publishdate;
    }
}

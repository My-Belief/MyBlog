package cn.lijinbo.pojo;

import java.util.Date;

public class BlogImf {
    private Integer bno;

    private String btitle;

    private Date buildTime;

    private Integer typeid;

    private String bcontext;

    public Integer getBno() {
        return bno;
    }

    public void setBno(Integer bno) {
        this.bno = bno;
    }

    public String getBtitle() {
        return btitle;
    }

    public void setBtitle(String btitle) {
        this.btitle = btitle == null ? null : btitle.trim();
    }

    public Date getBuildTime() {
        return buildTime;
    }

    public void setBuildTime(Date buildTime) {
        this.buildTime = buildTime;
    }

    public Integer getTypeid() {
        return typeid;
    }

    public void setTypeid(Integer typeid) {
        this.typeid = typeid;
    }

    public String getBcontext() {
        return bcontext;
    }

    public void setBcontext(String bcontext) {
        this.bcontext = bcontext == null ? null : bcontext.trim();
    }

    public BlogImf(Integer bno, String btitle, Date buildTime, Integer typeid, String bcontext) {
        this.bno = bno;
        this.btitle = btitle;
        this.buildTime = buildTime;
        this.typeid = typeid;
        this.bcontext = bcontext;
    }

    public BlogImf() {
    }
}
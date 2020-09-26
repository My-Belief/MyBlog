package cn.lijinbo.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class BlogImf {
    private Integer bno;

    private String btitle;

    @JsonFormat(pattern = "yyyy-MM-dd",locale = "zh",timezone = "GMT+8")
    private Date buildTime;

    private Integer typeid;

    private String bcontext;

    private String status;

    private String digest;

    public String getDigest() {
        return digest;
    }

    public void setDigest(String digest) {
        this.digest = digest;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

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

    public BlogImf(Integer bno, String btitle, Date buildTime, Integer typeid, String status, String digest) {
        this.bno = bno;
        this.btitle = btitle;
        this.buildTime = buildTime;
        this.typeid = typeid;
        this.status = status;
        this.digest = digest;
    }


    public BlogImf(Integer bno, String btitle, Date buildTime, Integer typeid, String bcontext, String status, String digest) {
        this.bno = bno;
        this.btitle = btitle;
        this.buildTime = buildTime;
        this.typeid = typeid;
        this.bcontext = bcontext;
        this.status = status;
        this.digest = digest;
    }

    public BlogImf(String btitle, Date buildTime, Integer typeid, String bcontext, String status, String digest) {
        this.btitle = btitle;
        this.buildTime = buildTime;
        this.typeid = typeid;
        this.bcontext = bcontext;
        this.status = status;
        this.digest = digest;
    }


    public BlogImf() {
    }
}
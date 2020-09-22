package cn.lijinbo.pojo;

public class About {
    private Integer aid;

    private String aboutInformation;

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getAboutInformation() {
        return aboutInformation;
    }

    public void setAboutInformation(String aboutInformation) {
        this.aboutInformation = aboutInformation == null ? null : aboutInformation.trim();
    }

    public About(Integer aid, String aboutInformation) {
        this.aid = aid;
        this.aboutInformation = aboutInformation;
    }

    public About() {
    }
}
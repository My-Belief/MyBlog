package cn.lijinbo.pojo;

public class ReMessage {
    private Integer msid;

    private Integer mid;

    private String message;

    public Integer getMsid() {
        return msid;
    }

    public void setMsid(Integer msid) {
        this.msid = msid;
    }

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message == null ? null : message.trim();
    }

    public ReMessage(Integer msid, Integer mid, String message) {
        this.msid = msid;
        this.mid = mid;
        this.message = message;
    }

    public ReMessage() {
    }
}
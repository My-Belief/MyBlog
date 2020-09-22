package cn.lijinbo.pojo;

public class Message {
    private Integer mid;

    private String message;

    private Integer bid;

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

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public Message(Integer mid, String message, Integer bid) {
        this.mid = mid;
        this.message = message;
        this.bid = bid;
    }

    public Message() {
    }
}
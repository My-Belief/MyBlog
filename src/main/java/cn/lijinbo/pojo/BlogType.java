package cn.lijinbo.pojo;

public class BlogType {
    private Integer tid;

    private String typeName;

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName == null ? null : typeName.trim();
    }

    public BlogType(Integer tid, String typeName) {
        this.tid = tid;
        this.typeName = typeName;
    }

    public BlogType() {
    }
}
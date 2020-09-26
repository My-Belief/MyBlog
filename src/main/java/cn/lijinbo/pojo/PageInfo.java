package cn.lijinbo.pojo;

import java.io.Serializable;
import java.util.List;

public class PageInfo<T> implements Serializable {
    private static final long serialVersionUID=1L;
//    当前页
    private int pageNum;
//    每页的数量
    private int size;
//    当前页的数量

//    当前页面第一个元素在数据库中行号
    private int startRow;
//    当前页面最后一个元素在数据库中行号
    private int endRow;

//    总记录数
    private long total;
//    总页数
    private int pages;
//    结果集
    private List<T> list;

//    前一页
    private  int prePage;
//    下一页
    private int nextPage;

//    是否为第一页
    private boolean isFirstPage=false;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getStartRow() {
        return startRow;
    }

    public void setStartRow(int startRow) {
        this.startRow = startRow;
    }

    public int getEndRow() {
        return endRow;
    }

    public void setEndRow(int endRow) {
        this.endRow = endRow;
    }

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public int getPages() {
        return pages;
    }

    public void setPages(int pages) {
        this.pages = pages;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    public int getPrePage() {
        return prePage;
    }

    public void setPrePage(int prePage) {
        this.prePage = prePage;
    }

    public int getNextPage() {
        return nextPage;
    }

    public void setNextPage(int nextPage) {
        this.nextPage = nextPage;
    }

    public boolean isFirstPage() {
        return isFirstPage;
    }

    public void setFirstPage(boolean firstPage) {
        isFirstPage = firstPage;
    }

    public PageInfo(int pageNum) {
        this.pageNum = pageNum;
    }

    public PageInfo(List<BlogImf> bf) {

    }

    public PageInfo(int pageNum, int size) {
        this.pageNum = pageNum;
        this.size = size;
    }

    public PageInfo(int pageNum, int size, int startRow, int endRow, long total, int pages, List<T> list, int prePage, int nextPage, boolean isFirstPage) {
        this.pageNum = pageNum;
        this.size = size;
        this.startRow = startRow;
        this.endRow = endRow;
        this.total = total;
        this.pages = pages;
        this.list = list;
        this.prePage = prePage;
        this.nextPage = nextPage;
        this.isFirstPage = isFirstPage;
    }
}

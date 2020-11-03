package com.java.po;

import java.util.Date;

public class Shop {
    private Integer sid;

    private String sname;

    private Double sprice;

    private String imgs;

    private String title;

    private Date putawaytime;

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname == null ? null : sname.trim();
    }

    public Double getSprice() {
        return sprice;
    }

    public void setSprice(Double sprice) {
        this.sprice = sprice;
    }

    public String getImgs() {
        return imgs;
    }

    public void setImgs(String imgs) {
        this.imgs = imgs == null ? null : imgs.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Date getPutawaytime() {
        return putawaytime;
    }

    public void setPutawaytime(Date putawaytime) {
        this.putawaytime = putawaytime;
    }
}
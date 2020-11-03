package com.java.po;

public class Shoppingcard {
    private Integer id;

    private Integer shopId;

    private Integer userId;

    private Integer num;

    private Double totalsprice;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getShopId() {
        return shopId;
    }

    public void setShopId(Integer shopId) {
        this.shopId = shopId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Double getTotalsprice() {
        return totalsprice;
    }

    public void setTotalsprice(Double totalsprice) {
        this.totalsprice = totalsprice;
    }
}
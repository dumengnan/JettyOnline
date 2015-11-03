package com.jetty.beans;

/**
 * Created by xia on 15-10-27.
 */
public class Description {
    private int id;
    private String des;
    private int productid;

    public int getProductid() {
        return productid;
    }

    public void setProductid(int productid) {
        this.productid = productid;
    }

    public int getId() {
        return id;
    }

    public String getDes() {
        return des;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setDes(String name) {
        this.des = name;
    }
}

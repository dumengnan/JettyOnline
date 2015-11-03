package com.jetty.beans;

import java.util.List;

/**
 * Created by mee on 15-10-19.
 */
public class Detail {
    private int id;//商品id
    private int cateid;//商品分类id
    private String name;//商品名称
    private float price;//商品价格
    private float weight;//商品重量
    private String image;//图片信息
    private String color;//商品颜色
    private String brand;//商品品牌
    private String other;//其他信息


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCateid() {
        return cateid;
    }

    public void setCateid(int cateid) {
        this.cateid = cateid;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public float getWeight() {
        return weight;
    }

    public void setWeight(float weight) {
        this.weight = weight;
    }
    public  String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }


    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other;
    }

}

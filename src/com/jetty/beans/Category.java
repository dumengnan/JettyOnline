package com.jetty.beans;

public class Category {
	private int id;
	private float category;
	private String name;
	private int pid;
	private int layer;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public float getCategory() {
		return category;
	}
	public void setCategory(float category) {
		this.category = category;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}

	public int getLayer() {
		return layer;
	}
	public void setLayer(int layer) {
		this.layer = layer;
	}
}

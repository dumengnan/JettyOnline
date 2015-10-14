package com.jetty.action;

import com.jetty.beans.Category;
import com.jetty.service.CategoryService;

import java.util.HashMap;

public class CategoryAction {
	private CategoryService categoryService;
	private String type;
	private float cate;
	private Category category;
	public HashMap<String, Object> categoryMap = new HashMap<String, Object>();

	public float getCate() {
		return cate;
	}

	public void setCate(float cate) {
		this.cate = cate;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	public CategoryService getCategoryService() {
		return categoryService;
	}
	public HashMap<String, Object> listCategory() throws Exception{
		System.out.println(type);
		System.out.println(cate);

		category = categoryService.productCategory();

		return categoryMap;
	}
}

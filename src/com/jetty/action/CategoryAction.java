package com.jetty.action;

import com.jetty.beans.Category;
import com.jetty.service.CategoryService;
import com.opensymphony.xwork2.ActionSupport;


import java.util.HashMap;
import java.util.List;

public class CategoryAction extends ActionSupport {
	private CategoryService categoryService;
	private String type;
	private String cate;
	private Category category;
	public HashMap<String, Object> categoryMap = new HashMap<String, Object>();

	public String getCate() {
		return cate;
	}

	public void setCate(String cate) {
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
	public String listCategory() throws Exception{
		System.out.println(type);
		System.out.println(cate);
		List<Category> categoryList;

		categoryList = categoryService.productCategory(cate);

		categoryMap.clear();

		categoryMap.put("category",categoryList);

		return SUCCESS;
	}
}

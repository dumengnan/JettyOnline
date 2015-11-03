package com.jetty.action;

import com.jetty.beans.Category;
import com.jetty.beans.Description;
import com.jetty.beans.Detail;
import com.jetty.beans.Question;
import com.jetty.service.CategoryService;
import com.opensymphony.xwork2.ActionSupport;
import javassist.runtime.Desc;


import java.util.HashMap;
import java.util.List;

public class CategoryAction extends ActionSupport {
	private CategoryService categoryService;
	private String type;
	private String cate;

	private int productid;
	private int cateid;

	public HashMap<String, Object> categoryMap = new HashMap<String, Object>();

	public int getCateid() {
		return cateid;
	}

	public void setCateid(int cateid) {
		this.cateid = cateid;
	}

	public int getProductid() {
		return productid;
	}

	public void setProductid(int productid) {
		this.productid = productid;
	}

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
		System.out.println(productid);
		List<Category> categoryList;
		List<HashMap<String,String>> productList;
		
		Detail detailStr;

		Question questionStr;

		if(cate != null || cateid != 0 && type.equals("search")) { //商品分类请求方法调用
			if(cate != null) {
				categoryList = categoryService.productCategory(cate);

				categoryMap.clear();

				categoryMap.put("category", categoryList);
			}else if(cateid != 0){

				productList = categoryService.listproduct(cateid);
				categoryMap.clear();
				categoryMap.put("products",productList);

			}
			return SUCCESS;
		}
		else
			if(productid != 0 && type.equals("detail")){//商品详情方法调用

				detailStr = categoryService.productDetail(productid);
				categoryMap.clear();

				categoryMap.put("detail",detailStr);

				return SUCCESS;
			}
		else
			if(productid != 0 && type.equals("image")){//获取影像信息方法调用

				categoryMap = categoryService.getimagename(productid);

				return SUCCESS;
			}
		else
			if(productid !=0 && type.equals("description")) {//商品描述调用

				List<Description> descriptionStr;

				descriptionStr=categoryService.productDescription(productid);
				categoryMap.clear();
				categoryMap.put("description",descriptionStr);

				for(Description desc:descriptionStr){
					System.out.println(desc.getDes());
				}

				return SUCCESS;

			}
		else
			if(productid != 0 && type.equals("question")){ //商品问题调用
				questionStr = categoryService.productQuestion(productid);
				categoryMap.clear();
				categoryMap.put("question",questionStr);
				System.out.println(questionStr.getQuestion());
			}
			return ERROR;

	}
}

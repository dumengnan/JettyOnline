package com.jetty.serviceImpl;

import com.jetty.beans.Category;
import com.jetty.dao.CategoryDao;
import com.jetty.service.CategoryService;

import java.util.List;

/**
 * Created by dci on 15-10-13.
 */
public class CategoryServiceImpl implements CategoryService{
    public CategoryDao getCategoryDao() {
        return categoryDao;
    }

    public void setCategoryDao(CategoryDao categoryDao) {
        this.categoryDao = categoryDao;
    }

    private CategoryDao categoryDao;

    @Override
    public List<Category> productCategory(String search_cate) {
        return categoryDao.listCategory(search_cate);
    }

}

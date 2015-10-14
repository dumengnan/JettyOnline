package com.jetty.service;

import com.jetty.beans.Category;

import java.util.List;

/**
 * Created by dci on 15-10-13.
 */
public interface CategoryService {

    public List<Category> productCategory(String search_cate);
}

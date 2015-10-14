package com.jetty.dao;

import com.jetty.beans.Category;

import java.util.List;

/**
 * Created by dci on 15-10-13.
 */
public interface CategoryDao extends BaseDao{
    List<Category>  listCategory(String search_cate);
}

package com.jetty.service;

import com.jetty.beans.Category;
import com.jetty.beans.Description;
import com.jetty.beans.Detail;
import com.jetty.beans.Question;

import java.util.HashMap;
import java.util.List;

/**
 * Created by dci on 15-10-13.
 */
public interface CategoryService {

    public List<Category> productCategory(String search_cate);
    public List<HashMap<String,String>> listproduct(int cateid);
    public Detail productDetail(int id);
    public List<Description> productDescription(int id);
    public Question productQuestion(int id);
    public HashMap<String,Object> getimagename(int product_id);
}

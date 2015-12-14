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

     List<Category> productCategory(String search_cate);
     List<HashMap<String,String>> listproduct(int cateid);
     Detail productDetail(int id);
     List<Description> productDescription(int id);
     List<Question> productQuestion(int id);
     HashMap<String,Object> getimagename(int product_id);
}

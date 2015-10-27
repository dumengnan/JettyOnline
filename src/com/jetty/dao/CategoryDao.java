package com.jetty.dao;

import com.jetty.beans.Category;
import com.jetty.beans.Detail;
//import com.jetty.beans.Question;

import java.util.List;

/**
 * Created by dci on 15-10-13.
 */
public interface CategoryDao extends BaseDao{
    List<Category>  listCategory(String search_cate);
    Detail listDetail(int id);
    //Question listQuestion(int id);
}

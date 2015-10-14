package com.jetty.dao;

import com.jetty.beans.Category;

/**
 * Created by dci on 15-10-13.
 */
public interface CategoryDao extends BaseDao{
    Category listCategory();
}

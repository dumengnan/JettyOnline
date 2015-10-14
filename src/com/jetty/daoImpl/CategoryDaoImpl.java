package com.jetty.daoImpl;

import com.jetty.beans.Category;
import com.jetty.dao.CategoryDao;

import java.util.List;

/**
 * Created by dci on 15-10-13.
 */
public class CategoryDaoImpl extends BaseDaoImpl implements CategoryDao{
    @Override
    public List<Category> listCategory() {

        String hql = "from Category where pid=1";
        List<Category> list = (List<Category>) this.getHibernateTemplate().find(hql);
        for(Category category:list)
            System.out.println(category.getName());

        return list;
    }
}

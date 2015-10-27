package com.jetty.daoImpl;

import com.jetty.beans.Category;
import com.jetty.beans.Description;
import com.jetty.beans.Detail;
import com.jetty.dao.CategoryDao;
import org.omg.PortableInterceptor.SUCCESSFUL;

import javax.swing.plaf.synth.SynthTextAreaUI;
import java.util.List;

/**
 * Created by dci on 15-10-13.
 */
public class CategoryDaoImpl extends BaseDaoImpl implements CategoryDao{
    @Override
    public List<Category> listCategory(String search_cate) {

        String hql;
        if(search_cate.equals("0"))
             hql = "from Category where pid=1";
        else
        {
            hql="from Category where category like "+"\'"+search_cate+"._"+"\'";
        }

        System.out.println("search string is :"+hql);

        List<Category> list = (List<Category>) this.getHibernateTemplate().find(hql);
        for(Category category:list)
            System.out.println(category.getName());
        System.out.println("search cate is:  " + search_cate);
        return list;
    }

    @Override
    public Detail listDetail(int id) {
        String hql = "from Detail where id = ?";

        List<Detail> list = (List<Detail>) this.getHibernateTemplate().find(hql,id);

        for(Detail detail:list)
            System.out.println(detail.getColor());

        return list.get(0);
    }

    @Override
    public Description listDescription(int id){
        String hql = "from Description where id = ?";
        List<Description> list=(List<Description>) this.getHibernateTemplate().find(hql,id);
        System.out.println(list.get(0).getDes());
        return list.get(0);
    }
}

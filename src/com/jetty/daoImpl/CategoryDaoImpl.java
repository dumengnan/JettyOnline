package com.jetty.daoImpl;

import com.jetty.beans.Category;
import com.jetty.beans.Description;
import com.jetty.beans.Detail;
import com.jetty.beans.Question;
import com.jetty.dao.CategoryDao;
import org.omg.PortableInterceptor.SUCCESSFUL;

import javax.swing.plaf.synth.SynthTextAreaUI;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

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
    public HashMap<String, Object> getImageInfo(int product_id) {
        HashMap<String,Object> imagemap = new HashMap<String,Object>();

        String hql = "from Detail where id = ?";
        List<Detail> list = (List<Detail>)this.getHibernateTemplate().find(hql,product_id);

        imagemap.put("image",list.get(0).getImage());
        imagemap.put("video",list.get(0).getVideo());

        return imagemap;
    }
    @Override
    public Description listDescription(int id){
        String hql = "from Description where id = ?";
        List<Description> list=(List<Description>) this.getHibernateTemplate().find(hql,id);
        System.out.println(list.get(0).getDes());
        return list.get(0);
    }
    @Override
    public Question listQuestion(int id){
        String hql = "from Question where id = ?";
        List<Question> list=(List<Question>) this.getHibernateTemplate().find(hql,id);
        return list.get(0);
    }
}

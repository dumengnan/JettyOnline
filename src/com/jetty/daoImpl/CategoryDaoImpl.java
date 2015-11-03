package com.jetty.daoImpl;

import com.jetty.beans.Category;
import com.jetty.beans.Description;
import com.jetty.beans.Detail;
import com.jetty.beans.Question;
import com.jetty.dao.CategoryDao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.io.InputStream;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

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

        try {
            List<Category> list = (List<Category>) this.getHibernateTemplate().find(hql);
            for (Category category : list)
                System.out.println(category.getName());
            return list;
        }catch (Exception e){
            e.printStackTrace();
        }

        return null;
    }
    public String AcquireServerInfo(){
        String serverip = null;
        String serverport = null;

        SAXReader reader = new SAXReader();
        InputStream in = Thread.currentThread().getContextClassLoader().getResourceAsStream("/config/serverconfig.xml");

        try{
            Document doc = reader.read(in);

            Element serveripElt = (Element) doc.selectObject("/config/server-info/server-ip");
            Element serverportElt = (Element) doc.selectObject("/config/server-info/server-port");

            serverip = serveripElt.getStringValue();
            serverport = serverportElt.getStringValue();

        }catch (Exception e){
            e.printStackTrace();
        }
        return serverip+":"+serverport;
    }
    @Override
    public List<HashMap<String,String>> listcateProduct(int cateid){
        String serverinfo = AcquireServerInfo();
        System.out.println("serverinfo :" + serverinfo);

        String hql = "from Detail where cateid = ?";
        List<HashMap<String,String>> productlist = new ArrayList<HashMap<String,String>>();

        try {
            List<Detail> list = (List<Detail>) this.getHibernateTemplate().find(hql, cateid);
            for (Detail detail : list) {
                HashMap<String, String> productmap = new HashMap<String, String>();
                productmap.put("id", detail.getId() + "");
                productmap.put("image", "http://" + serverinfo + "/image?type=get&name=" + detail.getImage());
                productmap.put("name", detail.getName());
                productlist.add(productmap);
            }
        } catch(Exception e){
            e.printStackTrace();
        }

        return productlist;

    }

    @Override
    public Detail listDetail(int id) {
        String hql = "from Detail where id = ?";
        try {
            List<Detail> list = (List<Detail>) this.getHibernateTemplate().find(hql, id);

            for (Detail detail : list)
                System.out.println(detail.getColor());
            return list.get(0);

        }catch (Exception e){
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public HashMap<String, Object> getImageInfo(int product_id) {
        HashMap<String,Object> imagemap = new HashMap<String,Object>();

        String hql = "from Detail where id = ?";
        try {
            List<Detail> list = (List<Detail>) this.getHibernateTemplate().find(hql, product_id);

            imagemap.put("image", list.get(0).getImage());

            return imagemap;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Description> listDescription(int id){
        String hql = "from Description where productid = ?";
        try {
            List<Description> list = (List<Description>) this.getHibernateTemplate().find(hql, id);
            return list;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
    @Override
    public Question listQuestion(int id){
        String hql = "from Question where productid = ?";
        try {
            List<Question> list = (List<Question>) this.getHibernateTemplate().find(hql, id);
            return list.get(0);
        }catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
}

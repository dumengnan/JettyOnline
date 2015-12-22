package com.jetty.daoImpl;

import com.jetty.beans.Experience;
import com.jetty.dao.ExpDao;

import java.util.HashMap;
import java.util.List;

/**
 * Created by mee on 15-12-21.
 */
public class ExpDaoImpl extends BaseDaoImpl implements ExpDao {
    private HashMap<String,Object> dataMap;
    @Override
    public HashMap<String,Object> getPageindex() {
        // TODO Auto-generated method stub
        String hql="select name from Experience";
        List<String> list = (List<String>) this.getHibernateTemplate().find(hql);
        dataMap=new HashMap<String, Object>();
        if (list != null && list.size() > 0) {
            dataMap.put("tile",list);

            return  dataMap;
        }
        return  dataMap;
    }
    @Override
    public HashMap<String, Object> getContent(String name)  {
        // TODO Auto-generated method stub
        dataMap=new HashMap<String, Object>();
        System.out.println(name);
        String hql="from Experience where name=?";
        try{
            List<Experience> list = (List<Experience>) this.getHibernateTemplate().find(hql,name);
            for(Experience exp :list )
            {
                System.out.println("hhh"+exp.getA());
                dataMap.put("img", exp.getImage());
                dataMap.put("question", exp.getQuestion());
                dataMap.put("question", exp.getQuestion());
                dataMap.put("A", exp.getA());
                dataMap.put("B", exp.getB());
                dataMap.put("C", exp.getC());
                dataMap.put("D", exp.getD());
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return dataMap;
    }
}

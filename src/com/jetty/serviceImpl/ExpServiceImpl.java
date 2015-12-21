package com.jetty.serviceImpl;

import com.jetty.dao.ExpDao;
import com.jetty.service.ExpService;

import java.util.HashMap;

/**
 * Created by mee on 15-12-21.
 */
public class ExpServiceImpl implements ExpService{
    private ExpDao expDao;

    public void setExpDao(ExpDao expDao) {
        this.expDao = expDao;
    }

    @Override
    public  HashMap<String, Object> getPageindex() {
        // TODO Auto-generated method stub
        return expDao.getPageindex();
    }

    @Override
    public HashMap<String, Object> getContent(String name) {
        // TODO Auto-generated method stub
        return expDao.getContent(name);
    }
}
